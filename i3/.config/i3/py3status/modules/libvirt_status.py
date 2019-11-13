# -*- coding: utf-8 -*-
"""
Shows states of libvirt domains

This module shows information and states of libvirt domains. If a domain is not 
defined by name, id or uuid then the count of active and inactive domains
will only be printed.

Configuration parameters:
    cache_timeout: How often we refresh this module in seconds (default 10)
    format: Format for module output (default "QEMU: {active}/{inactive}")
    uri: hypervisor uri (default: "qemu:///session")
    name: name of virtual machine 
    id: id of virtual machine
    uuid: UUID-String of virtual machine

Format of status string placeholders:
    {active} count of active domains
    {inactive} count of inactive domains
    {name} of the domain
    {state} of the domain
    {maxme} maximum of memory
    {usedmem} used memory
    {vcpu} count of vcpus

Requires:
    libvirt: python libvirt-api

Example:

```
libvirt_status {
    uri = "qemu:///system"
    name = "testvm"
    format = "{name}: {state}"
}
```

@author Johannes Fischer johannes-fischer@posteo.de
@license BSD
"""

import libvirt
import sys
from time import time


class Py3status:
    uri = 'qemu:///session'
    format = 'QEMU: {active}/{inactive}'
    format_down = None
    format_pause = None
    cache_timeout = 10

    states = { 
            libvirt.VIR_DOMAIN_RUNNING  : ("running", "color_good"),
            libvirt.VIR_DOMAIN_BLOCKED  : ("idle", "color_good"), 
            libvirt.VIR_DOMAIN_PAUSED   : ("paused", "color_bad"), 
            libvirt.VIR_DOMAIN_SHUTDOWN : ("shutdown", "color_bad"), 
            libvirt.VIR_DOMAIN_SHUTOFF  : ("shut_off", "color_bad"), 
            libvirt.VIR_DOMAIN_CRASHED  : ("crashed", "color_degraded"), 
            libvirt.VIR_DOMAIN_NOSTATE  : ("no_state" , "color_degraded") }        
       
    def kill(self, i3s_output_list, i3s_config):
        if hasattr(self, 'conn') and self.conn != None:
            self.conn.close()

    def libvirt_status(self,i3s_output_list, i3s_config):
        response = { 'cached_until' : time() + self.cache_timeout }

        # connect
        if not hasattr(self, 'conn'):
            try:
                self.conn = libvirt.openReadOnly(self.uri)
            except:
                self.conn = None
        
        if self.conn == None:
            if hasattr(self, 'format_no_state'):
                response['full_text'] = self.format_no_state
            else:
                response['full_text'] = 'no_hypervisor'
        else:
            # print hypervisor information  
            data = {'inactive' : self.conn.numOfDefinedDomains(),
                    'active' : self.conn.numOfDomains(),
                    'name' : "not_found",
                    'state' : "no_state",
                    'maxmem' : 0,
                    'usedmem' : 0,
                    'vcpu' : 0 }
            
            # lookup domain...
            if not hasattr(self, 'dom'):
                # ...by name
                if hasattr(self, 'name'):
                    try:
                        self.dom = self.conn.lookupByName(self.name)
                    except libvirt.libvirtError:
                        pass

                # ...by id
                if hasattr(self, 'id'):
                    try:
                        self.dom = self.conn.lookupByID(self.id)
                    except libvirt.libvirtError:
                        pass
                
                # ...by uuid:
                if hasattr(self, 'uuid'): 
                    try:
                        self.dom = self.conn.lookupByUUIDString(self.uuid)
                    except libvirt.libvirtError:
                        self.dom = None

            # print domain information
            if hasattr(self, 'dom') and self.dom != None:
                info = self.dom.info()
                data['name'] = self.dom.name()
                data['state'] = self.states[info[0]][0]
                data['maxmem'] = info[1]/1024
                data['usedmem'] = info[2]/1024
                data['vcpu'] = info[3]
                response['color'] = i3s_config[self.states[info[0]][1]]

            # format output
            try:
                attr = getattr(self, "format_{}".format(data['state']))
                response['full_text'] = attr.format(**data)
            except:
                response['full_text'] = self.format.format(**data)

        return response




if __name__ == "__main__":
    """
    Test this module by calling it directly.
    This SHOULD work before contributing your module please.
    """
    from time import sleep
    x = Py3status()
    config = {
        'color_bad': '#FF0000',
        'color_degraded': '#FFFF00',
        'color_good': '#00FF00'
    }
    while True:
        print(x.libvirt_status([], config))
        sleep(1)
