{% set colors = json("~/.cache/wal/colors.json") -%}
{% set theme = json("~/.config/i3/theme.json") -%}
{% set accent = colors.colors[theme.accent] -%}
{% set urgent = colors.colors[theme.urgent] -%}
@keyframes header_ripple_effect {
  from {
    background-image: radial-gradient(circle farthest-corner at center, #1a1a1a 0%, transparent 0%);
  }
  to {
    background-image: radial-gradient(circle farthest-corner at center, #1a1a1a 100%, transparent 0%);
  }
}

@keyframes ripple_effect {
  from {
    background-image: radial-gradient(circle farthest-corner at center, alpha(currentColor,0.1) 0%, transparent 0%);
  }
  to {
    background-image: radial-gradient(circle farthest-corner at center, alpha(currentColor,0.1) 100%, transparent 0%);
  }
}

* {
  background-clip: padding-box;
  -GtkToolButton-icon-spacing: 4;
  -GtkTextView-error-underline-color: #FC4138;
  -GtkScrolledWindow-scrollbar-spacing: 0;
  -GtkToolItemGroup-expander-size: 11;
  -GtkWidget-text-handle-width: 20;
  -GtkWidget-text-handle-height: 20;
  -GtkDialog-button-spacing: 4;
  -GtkDialog-action-area-border: 0;
  outline-color: alpha(currentColor,0.3);
  outline-style: dashed;
  outline-offset: -3px;
  outline-width: 1px;
  -gtk-outline-radius: 2px;
}

.background {
  color: #cbbfbf;
  background-color: #222222;
}

.popup.background.csd {
  border-radius: 2px;
}

*:disabled {
  -gtk-icon-effect: dim;
}

.gtkstyle-fallback {
  background-color: #222222;
  color: #cbbfbf;
}

.gtkstyle-fallback:hover {
  background-color: #3c3c3c;
  color: #cbbfbf;
}

.gtkstyle-fallback:active {
  background-color: #090909;
  color: #cbbfbf;
}

.gtkstyle-fallback:disabled {
  background-color: #272727;
  color: rgba(203, 191, 191, 0.45);
}

.gtkstyle-fallback:selected {
  background-color: {{ accent }};
  color: #ffffff;
}

button.gtkstyle-fallback:active, button.gtkstyle-fallback:checked {
  color: #ffffff;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: {{ accent }};
}

.view, .geary-sidebar-pane-separator frame.geary-folder-frame treeview.view.sidebar, iconview {
  color: #b5abab;
  background-color: #262626;
}

.view:hover, .geary-sidebar-pane-separator frame.geary-folder-frame treeview.view.sidebar:hover, iconview:hover {
  color: #cbbfbf;
}

.view:selected:hover, .geary-sidebar-pane-separator frame.geary-folder-frame treeview.view.sidebar:selected:hover, iconview:selected:hover {
  background-color: #d84c44;
}

textview, textview.view {
  background-color: #262626;
}

textview text {
  background-color: #262626;
}

textview border {
  background-color: #242424;
}

iconview:hover, iconview:active, iconview:selected {
  border-radius: 2px;
}

rubberband, XfdesktopIconView.view .rubberband, .content-view rubberband, treeview.view rubberband, flowbox rubberband,
.rubberband {
  border: 1px solid #ec271d;
  background-color: rgba(236, 39, 29, 0.2);
}

flowbox flowboxchild {
  padding: 3px;
  border-radius: 2px;
}

flowbox flowboxchild:selected {
  outline-offset: -2px;
}

label.separator {
  color: #cbbfbf;
}

label selection {
  color: #ffffff;
  background-color: {{ accent }};
}

label:disabled {
  color: rgba(203, 191, 191, 0.45);
}

label:disabled selection {
  color: #f8aaa6;
}

.dim-label, .slate-notification .notification-body,
.budgie-notification .notification-body,
.budgie-switcher .notification-body, popover label.separator,
popover.background label.separator, headerbar .subtitle, label.separator {
  opacity: 0.55;
}

assistant .sidebar {
  background-color: #262626;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

assistant.csd .sidebar {
  border-top-style: none;
}

assistant .sidebar label {
  padding: 6px 12px;
}

assistant .sidebar label.highlight {
  background-color: {{ accent }};
  color: #ffffff;
}

.osd .scale-popup, popover.osd, popover.magnifier, .csd popover.osd, .csd popover.magnifier,
popover.background.osd,
popover.background.magnifier, .csd popover.background.osd, .csd popover.background.magnifier, .osd {
  color: #d0c8c8;
  border: none;
  background-color: rgba(41, 41, 41, 0.95);
  background-clip: padding-box;
  box-shadow: none;
}

@keyframes spin {
  to {
    -gtk-icon-transform: rotate(1turn);
  }
}

spinner {
  background: none;
  opacity: 0;
  -gtk-icon-source: -gtk-icontheme("process-working-symbolic");
}

spinner:checked {
  opacity: 1;
  animation: spin 1s linear infinite;
}

spinner:checked:disabled {
  opacity: 0.5;
}

entry {
  min-height: 22px;
  border: 1px solid;
  padding: 2px 8px;
  caret-color: currentColor;
  border-radius: 3px;
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  color: #b5abab;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #262626;
}

entry.search {
  border-radius: 50px;
}

entry image {
  color: #aaa0a0;
}

entry image.left {
  padding-left: 0;
  padding-right: 5px;
}

entry image.right {
  padding-right: 0;
  padding-left: 5px;
}

.raven .raven-background spinbutton:not(.vertical), entry.flat, entry.flat:focus {
  min-height: 0;
  padding: 2px;
  background-image: none;
  border-color: transparent;
  border-radius: 0;
}

entry:focus {
  background-clip: border-box;
  color: #b5abab;
  border-color: {{ accent }};
  background-color: #262626;
}

entry:disabled {
  color: rgba(203, 191, 191, 0.45);
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(38, 38, 38, 0.55);
}

entry.warning {
  color: white;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #a0572f;
}

entry.warning image {
  color: white;
}

entry.warning:focus {
  color: white;
  background-color: #F27835;
  box-shadow: none;
}

entry.warning selection, entry.warning selection:focus {
  background-color: white;
  color: #F27835;
}

entry.error {
  color: white;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #a63631;
}

entry.error image {
  color: white;
}

entry.error:focus {
  color: white;
  background-color: #FC4138;
  box-shadow: none;
}

entry.error selection, entry.error selection:focus {
  background-color: white;
  color: #FC4138;
}

entry.search-missing {
  color: white;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #a63631;
}

entry.search-missing image {
  color: white;
}

entry.search-missing:focus {
  color: white;
  background-color: #FC4138;
  box-shadow: none;
}

entry.search-missing selection, entry.search-missing selection:focus {
  background-color: white;
  color: #FC4138;
}

entry:drop(active):focus, entry:drop(active) {
  border-color: #F08437;
  box-shadow: none;
}

.osd entry {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.42);
}

.osd entry image, .osd entry image:hover {
  color: inherit;
}

.osd entry:focus {
  color: #ffffff;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: {{ accent }};
}

.osd entry:disabled {
  color: rgba(208, 200, 200, 0.55);
  background-color: rgba(97, 97, 97, 0.85);
}

.osd entry selection:focus, .osd entry selection {
  color: {{ accent }};
  background-color: #ffffff;
}

entry progress {
  margin: 0 -6px;
  border-radius: 0;
  border-width: 0 0 2px;
  border-color: #00C487;
  border-style: solid;
  background-image: none;
  background-color: transparent;
  box-shadow: none;
}

treeview entry.flat, treeview entry {
  border-radius: 0;
  background-image: none;
  background-color: #262626;
}

treeview entry.flat:focus, treeview entry:focus {
  border-color: {{ accent }};
}

@keyframes needs_attention {
  from {
    background-image: -gtk-gradient(radial, center center, 0, center center, 0.01, to({{ accent }}), to(transparent));
  }
  to {
    background-image: -gtk-gradient(radial, center center, 0, center center, 0.5, to({{ accent }}), to(transparent));
  }
}

button {
  min-height: 22px;
  min-width: 20px;
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  border: 1px solid;
  border-radius: 3px;
  padding: 2px 6px;
  color: #cbbfbf;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #2b2b2b;
}

button separator {
  margin: 4px 1px;
}

#tasklist-button, .budgie-panel button.flat.launcher, button.budgie-menu-launcher, PanelToplevel.mate-panel-menu-bar > grid.horizontal > button, placessidebar row button.sidebar-button, button.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  transition: none;
}

#tasklist-button:hover, .budgie-panel button.flat.launcher:hover, button.budgie-menu-launcher:hover, PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:hover, placessidebar row button.sidebar-button:hover, button.flat:hover {
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  transition-duration: 350ms;
}

#tasklist-button:hover:active, button.budgie-menu-launcher:hover:active, PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:hover:active, placessidebar row button.sidebar-button:hover:active, button.flat:hover:active {
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

button:hover {
  color: #a99595;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #404040;
  -gtk-icon-effect: highlight;
}

button:active, button:checked {
  color: #ffffff;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: {{ accent }};
  background-clip: padding-box;
  transition-duration: 50ms;
}

button:active:not(:disabled) label:disabled, button:checked:not(:disabled) label:disabled {
  color: inherit;
  opacity: 0.6;
}

button:active {
  color: #cbbfbf;
}

button:active:hover, button:checked {
  color: #ffffff;
}

button.flat:disabled {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
}

button:disabled {
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(43, 43, 43, 0.55);
}

button:disabled label, button:disabled {
  color: rgba(203, 191, 191, 0.45);
}

button:disabled:active, button:disabled:checked {
  border-color: rgba(240, 84, 76, 0.75);
  background-color: rgba(240, 84, 76, 0.75);
  opacity: 0.6;
}

button:disabled:active label, button:disabled:active, button:disabled:checked label, button:disabled:checked {
  color: rgba(255, 255, 255, 0.8);
}

button.image-button {
  min-width: 24px;
  padding-left: 5px;
  padding-right: 5px;
}

button.text-button {
  padding-left: 12px;
  padding-right: 12px;
}

button.text-button.image-button {
  padding-left: 5px;
  padding-right: 5px;
}

button.text-button.image-button label:first-child {
  padding-left: 8px;
  padding-right: 2px;
}

button.text-button.image-button label:last-child {
  padding-right: 8px;
  padding-left: 2px;
}

button.text-button.image-button label:only-child {
  padding-left: 8px;
  padding-right: 8px;
}

button.text-button.image-button.popup {
  padding-right: 8px;
  padding-left: 8px;
}

button:drop(active) {
  color: #F08437;
  border-color: #F08437;
  box-shadow: none;
}

button.osd {
  color: #d0c8c8;
  background-color: rgba(41, 41, 41, 0.95);
  border-color: rgba(21, 21, 21, 0.95);
}

button.osd.image-button {
  padding: 0;
  min-height: 36px;
  min-width: 36px;
}

button.osd:hover {
  color: {{ accent }};
}

button.osd:active, button.osd:checked {
  color: #ffffff;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: {{ accent }};
}

button.osd:disabled {
  color: #5b5959;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.85);
}

.osd button {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.42);
}

.osd button:hover {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(115, 115, 115, 0.52);
}

.osd button:active, .osd button:checked {
  background-clip: padding-box;
  color: #ffffff;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: {{ accent }};
}

.osd button:disabled {
  color: #5b5959;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.85);
}

.osd button.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  box-shadow: none;
}

.osd button.flat:hover {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(115, 115, 115, 0.52);
}

.osd button.flat:disabled {
  color: #5b5959;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.85);
  background-image: none;
}

.osd button.flat:active, .osd button.flat:checked {
  color: #ffffff;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: {{ accent }};
}

.osd .linked:not(.vertical):not(.path-bar) > button:hover:not(:checked):not(:active):not(:only-child), .osd .linked:not(.vertical):not(.path-bar) > button:hover:not(:checked):not(:active) + button:not(:checked):not(:active) {
  box-shadow: none;
}

button.suggested-action {
  background-clip: border-box;
  color: white;
  background-color: #2eb398;
  border-color: #2eb398;
}

button.suggested-action.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: #2eb398;
}

button.suggested-action:hover {
  background-clip: border-box;
  color: white;
  background-color: #33c7a9;
  border-color: #33c7a9;
}

button.suggested-action:active, button.suggested-action:checked {
  background-clip: border-box;
  color: white;
  background-color: #45cfb3;
  border-color: #45cfb3;
}

button.suggested-action.flat:disabled {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: rgba(203, 191, 191, 0.45);
}

button.suggested-action:disabled {
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(43, 43, 43, 0.55);
}

button.suggested-action:disabled label, button.suggested-action:disabled {
  color: rgba(203, 191, 191, 0.45);
}

button.destructive-action {
  background-clip: border-box;
  color: white;
  background-color: #db5b5b;
  border-color: #db5b5b;
}

button.destructive-action.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: #db5b5b;
}

button.destructive-action:hover {
  background-clip: border-box;
  color: white;
  background-color: #e07070;
  border-color: #e07070;
}

button.destructive-action:active, button.destructive-action:checked {
  background-clip: border-box;
  color: white;
  background-color: #e48585;
  border-color: #e48585;
}

button.destructive-action.flat:disabled {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: rgba(203, 191, 191, 0.45);
}

button.destructive-action:disabled {
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(43, 43, 43, 0.55);
}

button.destructive-action:disabled label, button.destructive-action:disabled {
  color: rgba(203, 191, 191, 0.45);
}

.stack-switcher > button {
  outline-offset: -3px;
}

.stack-switcher > button > label {
  padding-left: 6px;
  padding-right: 6px;
}

.stack-switcher > button > image {
  padding-left: 6px;
  padding-right: 6px;
  padding-top: 3px;
  padding-bottom: 3px;
}

.stack-switcher > button.text-button {
  padding-left: 10px;
  padding-right: 10px;
}

.stack-switcher > button.image-button {
  padding-left: 2px;
  padding-right: 2px;
}

.stack-switcher > button.needs-attention:active > label, .stack-switcher > button.needs-attention:active > image, .stack-switcher > button.needs-attention:checked > label, .stack-switcher > button.needs-attention:checked > image {
  animation: none;
  background-image: none;
}

button stacksidebar row.needs-attention > label, stacksidebar button row.needs-attention > label, .stack-switcher > button.needs-attention > label, .stack-switcher > button.needs-attention > image {
  animation: needs_attention 150ms ease-in;
  background-image: -gtk-gradient(radial, center center, 0, center center, 0.5, to({{ accent }}), to(transparent));
  background-size: 6px 6px, 6px 6px;
  background-repeat: no-repeat;
  background-position: right 3px, right 2px;
}

button stacksidebar row.needs-attention > label:dir(rtl), stacksidebar button row.needs-attention > label:dir(rtl), .stack-switcher > button.needs-attention > label:dir(rtl), .stack-switcher > button.needs-attention > image:dir(rtl) {
  background-position: left 3px, left 2px;
}

button.font separator, button.file separator {
  background-color: transparent;
}

.inline-toolbar button, .inline-toolbar button:backdrop {
  border-radius: 2px;
  border-width: 1px;
}

.inline-toolbar toolbutton > button {
  color: #cbbfbf;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #2b2b2b;
}

.inline-toolbar toolbutton > button:hover {
  color: #a99595;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #404040;
}

.inline-toolbar toolbutton > button:active, .inline-toolbar toolbutton > button:checked {
  color: #ffffff;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: {{ accent }};
}

.inline-toolbar toolbutton > button:disabled {
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(43, 43, 43, 0.55);
}

.inline-toolbar toolbutton > button:disabled label, .inline-toolbar toolbutton > button:disabled {
  color: rgba(203, 191, 191, 0.45);
}

.inline-toolbar toolbutton > button:disabled:active, .inline-toolbar toolbutton > button:disabled:checked {
  border-color: rgba(240, 84, 76, 0.75);
  background-color: rgba(240, 84, 76, 0.75);
  opacity: 0.6;
}

.inline-toolbar toolbutton > button:disabled:active label, .inline-toolbar toolbutton > button:disabled:active, .inline-toolbar toolbutton > button:disabled:checked label, .inline-toolbar toolbutton > button:disabled:checked {
  color: rgba(255, 255, 255, 0.8);
}

toolbar.inline-toolbar toolbutton:first-child > button.flat, .inline-toolbar toolbutton:first-child > button.flat {
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
}

toolbar.inline-toolbar toolbutton:last-child > button.flat, .inline-toolbar toolbutton:last-child > button.flat {
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
  border-right-style: solid;
}

toolbar.inline-toolbar toolbutton:only-child > button.flat, .inline-toolbar toolbutton:only-child > button.flat {
  border-radius: 3px;
  border-style: solid;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry {
  border-left-color: rgba(0, 0, 0, 0.3);
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.error + entry,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry.error {
  border-left-color: #FC4138;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.warning + entry,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry.warning {
  border-left-color: #F27835;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.error + entry.warning,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.warning + entry.error {
  border-left-color: #f75d37;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry:focus:not(:last-child),
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry:focus:last-child {
  border-left-color: {{ accent }};
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry:focus:not(:only-child) + entry,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry:focus:not(:only-child) + button,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: {{ accent }};
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry:drop(active):not(:last-child),
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry:drop(active):last-child {
  border-left-color: #F08437;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry:drop(active):not(:only-child) + entry,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry:drop(active):not(:only-child) + button,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry:drop(active):not(:only-child) + combobox > box > button.combo {
  border-left-color: #F08437;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry.warning:focus:not(:last-child),
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry.warning:focus:last-child {
  border-left-color: #F27835;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.warning:focus:not(:only-child) + entry,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.warning:focus:not(:only-child) + button,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.warning:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: #F27835;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry.error:focus:not(:last-child),
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + entry.error:focus:last-child {
  border-left-color: #FC4138;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.error:focus:not(:only-child) + entry,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.error:focus:not(:only-child) + button,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry.error:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: #FC4138;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:active + entry,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:checked + entry {
  border-left-color: {{ accent }};
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button + button {
  border-left-style: none;
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action) {
  box-shadow: inset 1px 0 rgba(0, 0, 0, 0.25);
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover) {
  box-shadow: inset 1px 0 rgba(0, 0, 0, 0.25);
}

.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:disabled,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:hover,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar) {
  box-shadow: none;
}

.linked.path-bar:not(.vertical) > button + button {
  border-left-style: none;
}

.linked.path-bar:not(.vertical) > button:hover:not(:checked):not(:active):not(:only-child):first-child:hover {
  box-shadow: none;
}

.linked.path-bar:not(.vertical) > button:hover:not(:checked):not(:active):not(:only-child):last-child:hover {
  box-shadow: none;
}

.osd .linked:not(.vertical) > entry + entry {
  border-left-color: rgba(11, 11, 11, 0.3);
}

.osd .linked:not(.vertical) > entry.error + entry,
.osd .linked:not(.vertical) > entry + entry.error {
  border-left-color: #FC4138;
}

.osd .linked:not(.vertical) > entry.warning + entry,
.osd .linked:not(.vertical) > entry + entry.warning {
  border-left-color: #F27835;
}

.osd .linked:not(.vertical) > entry.error + entry.warning,
.osd .linked:not(.vertical) > entry.warning + entry.error {
  border-left-color: #f75d37;
}

.osd .linked:not(.vertical) > entry + entry:focus:not(:last-child),
.osd .linked:not(.vertical) > entry + entry:focus:last-child {
  border-left-color: {{ accent }};
}

.osd .linked:not(.vertical) > entry:focus:not(:only-child) + entry,
.osd .linked:not(.vertical) > entry:focus:not(:only-child) + button,
.osd .linked:not(.vertical) > entry:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: {{ accent }};
}

.osd .linked:not(.vertical) > entry + entry:drop(active):not(:last-child),
.osd .linked:not(.vertical) > entry + entry:drop(active):last-child {
  border-left-color: #F08437;
}

.osd .linked:not(.vertical) > entry:drop(active):not(:only-child) + entry,
.osd .linked:not(.vertical) > entry:drop(active):not(:only-child) + button,
.osd .linked:not(.vertical) > entry:drop(active):not(:only-child) + combobox > box > button.combo {
  border-left-color: #F08437;
}

.osd .linked:not(.vertical) > entry + entry.warning:focus:not(:last-child),
.osd .linked:not(.vertical) > entry + entry.warning:focus:last-child {
  border-left-color: #F27835;
}

.osd .linked:not(.vertical) > entry.warning:focus:not(:only-child) + entry,
.osd .linked:not(.vertical) > entry.warning:focus:not(:only-child) + button,
.osd .linked:not(.vertical) > entry.warning:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: #F27835;
}

.osd .linked:not(.vertical) > entry + entry.error:focus:not(:last-child),
.osd .linked:not(.vertical) > entry + entry.error:focus:last-child {
  border-left-color: #FC4138;
}

.osd .linked:not(.vertical) > entry.error:focus:not(:only-child) + entry,
.osd .linked:not(.vertical) > entry.error:focus:not(:only-child) + button,
.osd .linked:not(.vertical) > entry.error:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: #FC4138;
}

.osd .linked:not(.vertical) > button:active + entry,
.osd .linked:not(.vertical) > button:checked + entry {
  border-left-color: {{ accent }};
}

.osd .linked:not(.vertical) > button + button {
  border-left-style: none;
}

.osd .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.osd .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action) {
  box-shadow: inset 1px 0 rgba(11, 11, 11, 0.42);
}

.osd .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.osd .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover) {
  box-shadow: inset 1px 0 rgba(11, 11, 11, 0.42);
}

.osd .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.osd .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.osd .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.osd .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.osd .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.osd .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:disabled,
.osd .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.osd .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:hover,
.osd .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.osd .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.osd .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.osd .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.osd .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.osd .linked:not(.vertical) {
  box-shadow: none;
}

.linked.vertical > entry + entry {
  border-top-color: rgba(0, 0, 0, 0.3);
}

.linked.vertical > entry.error + entry,
.linked.vertical > entry + entry.error {
  border-top-color: #FC4138;
}

.linked.vertical > entry.warning + entry,
.linked.vertical > entry + entry.warning {
  border-top-color: #F27835;
}

.linked.vertical > entry.error + entry.warning,
.linked.vertical > entry.warning + entry.error {
  border-top-color: #f75d37;
}

.linked.vertical > entry + entry:focus:not(:last-child),
.linked.vertical > entry + entry:focus:last-child {
  border-top-color: {{ accent }};
}

.linked.vertical > entry:focus:not(:only-child) + entry,
.linked.vertical > entry:focus:not(:only-child) + button,
.linked.vertical > entry:focus:not(:only-child) + combobox > box > button.combo {
  border-top-color: {{ accent }};
}

.linked.vertical > entry + entry:drop(active):not(:last-child),
.linked.vertical > entry + entry:drop(active):last-child {
  border-top-color: #F08437;
}

.linked.vertical > entry:drop(active):not(:only-child) + entry,
.linked.vertical > entry:drop(active):not(:only-child) + button,
.linked.vertical > entry:drop(active):not(:only-child) + combobox > box > button.combo {
  border-top-color: #F08437;
}

.linked.vertical > entry + entry.warning:focus:not(:last-child),
.linked.vertical > entry + entry.warning:focus:last-child {
  border-top-color: #F27835;
}

.linked.vertical > entry.warning:focus:not(:only-child) + entry,
.linked.vertical > entry.warning:focus:not(:only-child) + button,
.linked.vertical > entry.warning:focus:not(:only-child) + combobox > box > button.combo {
  border-top-color: #F27835;
}

.linked.vertical > entry + entry.error:focus:not(:last-child),
.linked.vertical > entry + entry.error:focus:last-child {
  border-top-color: #FC4138;
}

.linked.vertical > entry.error:focus:not(:only-child) + entry,
.linked.vertical > entry.error:focus:not(:only-child) + button,
.linked.vertical > entry.error:focus:not(:only-child) + combobox > box > button.combo {
  border-top-color: #FC4138;
}

.linked.vertical > button:active + entry,
.linked.vertical > button:checked + entry {
  border-top-color: {{ accent }};
}

.linked.vertical > button + button {
  border-top-style: none;
}

.linked.vertical > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.linked.vertical > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action) {
  box-shadow: inset 0 1px rgba(0, 0, 0, 0.25);
}

.linked.vertical > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.linked.vertical > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover) {
  box-shadow: inset 0 1px rgba(0, 0, 0, 0.25);
}

.linked.vertical > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.linked.vertical > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.linked.vertical > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.linked.vertical > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.linked.vertical > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.linked.vertical > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:disabled,
.linked.vertical > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked.vertical > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:hover,
.linked.vertical > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked.vertical > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked.vertical > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked.vertical > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.linked.vertical > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.linked.vertical {
  box-shadow: none;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error + entry,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.error,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning + entry,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.warning,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error + entry.warning,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning + entry.error, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error + entry,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.error,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning + entry,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.warning,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error + entry.warning,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning + entry.error {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry:focus:not(:last-child),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry:focus:last-child, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry:focus:not(:last-child),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry:focus:last-child {
  border-left-color: {{ accent }};
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + entry, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked), .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked) {
  border-left-color: transparent;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + button:hover,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + combobox > box > button.combo:hover, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + button:hover,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + combobox > box > button.combo:hover {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry:drop(active):not(:last-child),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry:drop(active):last-child, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry:drop(active):not(:last-child),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry:drop(active):last-child {
  border-left-color: #F08437;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + entry, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + button:not(:hover):not(:active):not(:checked),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked), .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + button:not(:hover):not(:active):not(:checked),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked) {
  border-left-color: transparent;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + button:hover,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + combobox > box > button.combo:hover, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + button:hover,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + combobox > box > button.combo:hover {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.warning:focus:not(:last-child),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.warning:focus:last-child, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.warning:focus:not(:last-child),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.warning:focus:last-child {
  border-left-color: #F27835;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + entry, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked), .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked) {
  border-left-color: transparent;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + button:hover,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + combobox > box > button.combo:hover, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + button:hover,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + combobox > box > button.combo:hover {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.error:focus:not(:last-child),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.error:focus:last-child, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.error:focus:not(:last-child),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry + entry.error:focus:last-child {
  border-left-color: #FC4138;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + entry, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked), .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked) {
  border-left-color: transparent;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + button:hover,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + combobox > box > button.combo:hover, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + button:hover,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + combobox > box > button.combo:hover {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:active + entry,
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:checked + entry, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:active + entry,
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:checked + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button + button, .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button + button {
  border-left-style: solid;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action), .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action) {
  box-shadow: none;
}

headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
headerbar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover), .titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.titlebar .linked:not(.vertical):not(.path-bar):not(.nautilus-path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover) {
  box-shadow: none;
}

.linked:not(.vertical) > combobox > box > button.combo:dir(ltr), .linked:not(.vertical) > combobox > box > button.combo:dir(rtl), .budgie-settings-window buttonbox.inline-toolbar button, spinbutton:not(.vertical) button, spinbutton:not(.vertical) entry, .linked:not(.vertical) > entry, .linked:not(.vertical) > entry:focus, .inline-toolbar button, .inline-toolbar button:backdrop, .linked:not(.vertical) > button, .linked:not(.vertical) > button:hover, .linked:not(.vertical) > button:active, .linked:not(.vertical) > button:checked, toolbar.inline-toolbar toolbutton > button.flat, .inline-toolbar toolbutton > button.flat {
  border-radius: 0;
  border-right-style: none;
}

.budgie-settings-window buttonbox.inline-toolbar button:first-child, spinbutton:not(.vertical) button:first-child, spinbutton:not(.vertical) entry:first-child, .linked:not(.vertical) > entry:first-child, .inline-toolbar button:first-child, .inline-toolbar button:first-child:backdrop, .linked:not(.vertical) > button:first-child {
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
}

.budgie-settings-window buttonbox.inline-toolbar button:last-child, spinbutton:not(.vertical) button:last-child, spinbutton:not(.vertical) entry:last-child, .linked:not(.vertical) > entry:last-child, .inline-toolbar button:last-child, .inline-toolbar button:last-child:backdrop, .linked:not(.vertical) > button:last-child {
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
  border-right-style: solid;
}

.budgie-settings-window buttonbox.inline-toolbar button:only-child, spinbutton:not(.vertical) button:only-child, spinbutton:not(.vertical) entry:only-child, .linked:not(.vertical) > entry:only-child, .inline-toolbar button:only-child, .inline-toolbar button:only-child:backdrop, .linked:not(.vertical) > button:only-child {
  border-radius: 3px;
  border-style: solid;
}

spinbutton.vertical button, spinbutton.vertical entry, .linked.vertical > entry, .linked.vertical > entry:focus, .linked.vertical > button, .linked.vertical > button:hover, .linked.vertical > button:active, .linked.vertical > button:checked {
  border-radius: 0;
  border-bottom-style: none;
}

spinbutton.vertical button:first-child, spinbutton.vertical entry:first-child, .linked.vertical > entry:first-child, .linked.vertical > button:first-child {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}

spinbutton.vertical button:last-child, spinbutton.vertical entry:last-child, .linked.vertical > entry:last-child, .linked.vertical > button:last-child {
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  border-bottom-style: solid;
}

spinbutton.vertical button:only-child, spinbutton.vertical entry:only-child, .linked.vertical > entry:only-child, .linked.vertical > button:only-child {
  border-radius: 3px;
  border-style: solid;
}

.nemo-window .floating-bar button, calendar.button, .app-notification button.flat, notebook > header > tabs > tab button.flat:active, notebook > header > tabs > tab button.flat:active:hover, notebook > header > tabs > tab button.flat:hover, button:link:hover, button:link:active, button:link:checked, button:visited:hover, button:visited:active, button:visited:checked, button:link, button:visited, menuitem.button.flat,
modelbutton.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  box-shadow: none;
}

menuitem.button.flat,
modelbutton.flat {
  transition: none;
  min-height: 24px;
  padding-left: 8px;
  padding-right: 8px;
  outline-offset: -3px;
  border-radius: 2px;
}

menuitem.button.flat:hover,
modelbutton.flat:hover {
  background-color: #333232;
}

menuitem.button.flat:checked,
modelbutton.flat:checked {
  color: #cbbfbf;
}

menuitem.button.flat:disabled,
modelbutton.flat:disabled {
  color: rgba(203, 191, 191, 0.45);
}

menuitem.button.flat check:last-child,
menuitem.button.flat radio:last-child,
modelbutton.flat check:last-child,
modelbutton.flat radio:last-child {
  margin-left: 8px;
}

menuitem.button.flat check:first-child,
menuitem.button.flat radio:first-child,
modelbutton.flat check:first-child,
modelbutton.flat radio:first-child {
  margin-right: 8px;
}

modelbutton.flat arrow.left {
  -gtk-icon-source: -gtk-icontheme("pan-start-symbolic");
}

modelbutton.flat arrow.right {
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
}

infobar.info *:link, infobar.question *:link, infobar.warning *:link, infobar.error *:link, headerbar.selection-mode .subtitle:link, *:link:selected, *:selected *:link, button:selected:link, button:selected:visited, *:selected button:link, *:selected button:visited {
  color: #fcdddb;
}

*:link, button:link, button:visited {
  color: #f8aeaa;
}

*:link:visited, button:visited {
  color: #cdc6c6;
}

*:selected *:link:visited, *:selected button:visited {
  color: #f9bbb7;
}

*:link:hover, button:hover:link, button:hover:visited {
  color: #fcdbd9;
}

*:selected *:link:hover, *:selected button:hover:link, *:selected button:hover:visited {
  color: #feeeed;
}

*:link:active, button:active:link, button:active:visited {
  color: #f8aeaa;
}

*:selected *:link:active, *:selected button:active:link, *:selected button:active:visited {
  color: #fcdddb;
}

button:link > label, button:visited > label {
  text-decoration-line: underline;
}

spinbutton:drop(active) {
  box-shadow: none;
}

spinbutton button:active {
  color: #ffffff;
}

spinbutton:disabled {
  color: rgba(203, 191, 191, 0.45);
}

spinbutton:not(.vertical) entry {
  min-width: 28px;
}

spinbutton:not(.vertical):dir(ltr) entry, spinbutton:not(.vertical):dir(rtl) button.up {
  border-radius: 3px 0 0 3px;
}

spinbutton:not(.vertical) > button + button {
  border-left-style: none;
}

spinbutton:not(.vertical) > button:hover:not(:active),
spinbutton:not(.vertical) > button:hover + button {
  box-shadow: inset 1px 0 rgba(0, 0, 0, 0.25);
}

spinbutton:not(.vertical) > button:disabled + button:not(:disabled):not(:active):not(:checked):not(:hover),
spinbutton:not(.vertical) > button:not(:disabled):not(:active):not(:checked):not(:hover) + button:disabled {
  box-shadow: inset 1px 0 rgba(0, 0, 0, 0.15);
}

spinbutton:not(.vertical) > button:first-child:hover:not(:active),
spinbutton:not(.vertical) > button.up:dir(rtl):hover:not(:active),
spinbutton:not(.vertical) > entry + button:not(:active):hover {
  box-shadow: none;
}

spinbutton:not(.vertical) > entry:focus + button {
  border-left-color: {{ accent }};
}

spinbutton:not(.vertical) > entry:drop(active) + button {
  border-left-color: #F08437;
}

.osd spinbutton:not(.vertical) > button:hover:not(:active),
.osd spinbutton:not(.vertical) > button:hover + button {
  box-shadow: inset 1px 0 rgba(11, 11, 11, 0.42);
}

.osd spinbutton:not(.vertical) > button:first-child:hover:not(:active),
.osd spinbutton:not(.vertical) > button.up:dir(rtl):hover:not(:active),
.osd spinbutton:not(.vertical) > entry + button:not(:active):hover {
  box-shadow: none;
}

.osd spinbutton:not(.vertical) > entry:focus + button {
  border-left-color: {{ accent }};
}

spinbutton.vertical button, spinbutton.vertical entry {
  padding-left: 4px;
  padding-right: 4px;
  min-width: 0;
}

spinbutton.vertical button.up {
  border-radius: 3px 3px 0 0;
}

spinbutton.vertical > entry:focus + button {
  border-top-color: {{ accent }};
}

spinbutton.vertical > entry:drop(active) + button {
  border-top-color: #F08437;
}

combobox button.combo {
  min-width: 0;
  padding-left: 8px;
  padding-right: 8px;
}

combobox arrow {
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
  min-height: 16px;
  min-width: 16px;
}

combobox:drop(active) button.combo {
  color: #F08437;
  border-color: #F08437;
  box-shadow: none;
}

.linked:not(.vertical) > combobox:first-child > box > button.combo {
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
}

.linked:not(.vertical) > combobox:last-child > box > button.combo {
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
  border-right-style: solid;
}

.linked:not(.vertical) > combobox:only-child > box > button.combo {
  border-radius: 3px;
  border-style: solid;
}

.linked.vertical > combobox:first-child > box > button.combo {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}

.linked.vertical > combobox:last-child > box > button.combo {
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  border-bottom-style: solid;
}

.linked.vertical > combobox:only-child > box > button.combo {
  border-radius: 3px;
  border-style: solid;
}

toolbar, .inline-toolbar {
  -GtkWidget-window-dragging: true;
  padding: 4px;
  background-color: #222222;
}

toolbar separator, .inline-toolbar separator {
  background: none;
}

toolbar.horizontal separator, .horizontal.inline-toolbar separator {
  margin: 0 6px;
}

toolbar.vertical separator, .vertical.inline-toolbar separator {
  margin: 6px 0;
}

.osd toolbar, .osd .inline-toolbar {
  background-color: transparent;
}

toolbar.osd, .osd.inline-toolbar {
  padding: 7px;
  border: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 3px;
  background-color: rgba(41, 41, 41, 0.9);
}

toolbar.osd.left, .osd.left.inline-toolbar, toolbar.osd.right, .osd.right.inline-toolbar, toolbar.osd.top, .osd.top.inline-toolbar, toolbar.osd.bottom, .osd.bottom.inline-toolbar {
  border-radius: 0;
}

toolbar.osd.top, .osd.top.inline-toolbar {
  border-width: 0 0 1px 0;
}

toolbar.osd.bottom, .osd.bottom.inline-toolbar {
  border-width: 1px 0 0 0;
}

toolbar.osd.left, .osd.left.inline-toolbar {
  border-width: 0 1px 0 0;
}

toolbar.osd.right, .osd.right.inline-toolbar {
  border-width: 0 0 0 1px;
}

toolbar:not(.inline-toolbar) switch, .inline-toolbar:not(.inline-toolbar) switch,
toolbar:not(.inline-toolbar) scale,
.inline-toolbar:not(.inline-toolbar) scale,
toolbar:not(.inline-toolbar) entry,
.inline-toolbar:not(.inline-toolbar) entry,
toolbar:not(.inline-toolbar) spinbutton,
.inline-toolbar:not(.inline-toolbar) spinbutton,
toolbar:not(.inline-toolbar) button,
.inline-toolbar:not(.inline-toolbar) button {
  margin-right: 1px;
  margin-bottom: 1px;
}

toolbar:not(.inline-toolbar) .linked > button, .inline-toolbar:not(.inline-toolbar) .linked > button,
toolbar:not(.inline-toolbar) .linked > entry,
.inline-toolbar:not(.inline-toolbar) .linked > entry {
  margin-right: 0;
}

.primary-toolbar:not(.libreoffice-toolbar) {
  color: #b5abab;
  background-color: transparent;
  box-shadow: none;
  border-width: 0 0 1px 0;
  border-style: solid;
  border-image: linear-gradient(to bottom, black, rgba(0, 0, 0, 0.25)) 1 0 1 0;
}

.inline-toolbar {
  background-color: #1a1a1a;
  border-style: solid;
  border-color: rgba(0, 0, 0, 0.25);
  border-width: 0 1px 1px;
  padding: 3px;
  border-radius: 0  0 3px 3px;
}

searchbar {
  padding: 0;
  margin: 0;
  border: none;
}

searchbar > revealer > box {
  padding: 6px;
  margin: -6px;
  border-style: solid;
  border-color: #1a1a1a;
  background-color: #222222;
  border-width: 0 0 1px;
}

actionbar {
  padding: 6px;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  background-color: #1a1a1a;
}

headerbar {
  min-height: 42px;
  padding: 0 10px;
  color: #d0c8c8;
  background-color: #1a1a1a;
}

headerbar:backdrop {
  transition: 200ms ease-out;
  color: rgba(208, 200, 200, 0.7);
  background-color: #272727;
}

headerbar .title {
  padding-left: 12px;
  padding-right: 12px;
}

headerbar .subtitle {
  font-size: smaller;
  padding-left: 12px;
  padding-right: 12px;
}

headerbar.selection-mode {
  color: #ffffff;
  background-color: rgba(240, 84, 76, 0.95);
  border-color: rgba(238, 66, 57, 0.95);
  box-shadow: none;
}

headerbar.selection-mode:backdrop {
  background-color: rgba(240, 84, 76, 0.95);
  color: rgba(255, 255, 255, 0.6);
}

headerbar.selection-mode .selection-menu {
  box-shadow: none;
  padding-left: 10px;
  padding-right: 10px;
}

headerbar.selection-mode .selection-menu GtkArrow {
  -GtkArrow-arrow-scaling: 1;
}

headerbar.selection-mode .selection-menu .arrow {
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
}

.maximized headerbar.selection-mode {
  background-color: {{ accent }};
}

.tiled headerbar, .tiled headerbar:backdrop, .maximized headerbar, .maximized headerbar:backdrop {
  border-radius: 0;
}

.maximized headerbar {
  background-color: #1a1a1a;
  border-color: #101010;
}

.maximized headerbar:backdrop {
  background-color: #272727;
}

headerbar.default-decoration {
  min-height: 28px;
  padding: 0 6px;
  background-color: #1a1a1a;
}

.tiled headerbar.default-decoration, .maximized headerbar.default-decoration, .fullscreen headerbar.default-decoration {
  box-shadow: none;
}

headerbar.default-decoration button.titlebutton {
  border: none;
  min-height: 22px;
  min-width: 22px;
  margin: 0;
  padding: 0;
}

.titlebar, .titlebar.background {
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
}

.titlebar, .titlebar headerbar {
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
}

.tiled .titlebar, .maximized .titlebar, .fullscreen .titlebar, .tiled .titlebar headerbar, .maximized .titlebar headerbar, .fullscreen .titlebar headerbar {
  box-shadow: none;
}

window.background > box.vertical > headerbar:not(.titlebar) {
  border-radius: 0 0 0 0;
  box-shadow: none;
}

window.background > box.vertical > headerbar:not(.titlebar), window.background > box.vertical > headerbar:not(.titlebar):backdrop {
  background-color: #1a1a1a;
}

separator:first-child + window.background > box.vertical > headerbar:not(.titlebar), separator:first-child + window.background > box.vertical > headerbar:not(.titlebar):backdrop, window.background > box.vertical > headerbar:not(.titlebar):first-child, window.background > box.vertical > headerbar:not(.titlebar):first-child:backdrop {
  border-top-left-radius: 0;
}

window.background > box.vertical > headerbar:not(.titlebar):last-child, window.background > box.vertical > headerbar:not(.titlebar):last-child:backdrop {
  border-top-right-radius: 0;
}

window.thunar toolbar#location-toolbar entry, window.thunar #location-toolbar.inline-toolbar entry, .nemo-window .primary-toolbar entry, headerbar entry {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.42);
}

window.thunar toolbar#location-toolbar entry image, window.thunar #location-toolbar.inline-toolbar entry image, .nemo-window .primary-toolbar entry image, headerbar entry image {
  color: inherit;
}

window.thunar toolbar#location-toolbar entry:backdrop, window.thunar #location-toolbar.inline-toolbar entry:backdrop, .nemo-window .primary-toolbar entry:backdrop, headerbar entry:backdrop {
  opacity: 0.85;
}

window.thunar toolbar#location-toolbar entry:focus, window.thunar #location-toolbar.inline-toolbar entry:focus, .nemo-window .primary-toolbar entry:focus, headerbar entry:focus {
  color: white;
  border-color: {{ accent }};
  background-color: rgba(67, 67, 67, 0.42);
  background-clip: padding-box;
}

window.thunar toolbar#location-toolbar entry:focus image, window.thunar #location-toolbar.inline-toolbar entry:focus image, .nemo-window .primary-toolbar entry:focus image, headerbar entry:focus image {
  color: {{ accent }};
}

window.thunar toolbar#location-toolbar entry:disabled, window.thunar #location-toolbar.inline-toolbar entry:disabled, .nemo-window .primary-toolbar entry:disabled, headerbar entry:disabled {
  color: rgba(208, 200, 200, 0.55);
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.85);
}

window.thunar toolbar#location-toolbar entry selection:focus, window.thunar #location-toolbar.inline-toolbar entry selection:focus, .nemo-window .primary-toolbar entry selection:focus, headerbar entry selection:focus {
  background-color: #ffffff;
  color: {{ accent }};
}

window.thunar toolbar#location-toolbar button, window.thunar #location-toolbar.inline-toolbar button, .caja-navigation-window toolbar#Toolbar.primary-toolbar button, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button, .nemo-window .primary-toolbar button, headerbar button {
  color: #d0c8c8;
  outline-offset: -3px;
  background-color: transparent;
  border-color: transparent;
  border-width: 0;
}

window.thunar toolbar#location-toolbar button:backdrop, window.thunar #location-toolbar.inline-toolbar button:backdrop, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:backdrop, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:backdrop, .nemo-window .primary-toolbar button:backdrop, headerbar button:backdrop {
  opacity: 0.8;
}

window.thunar toolbar#location-toolbar button:hover, window.thunar #location-toolbar.inline-toolbar button:hover, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:hover, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:hover, .nemo-window .primary-toolbar button:hover, headerbar button:hover {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: rgba(208, 200, 200, 0.18);
}

window.thunar toolbar#location-toolbar button:active, window.thunar #location-toolbar.inline-toolbar button:active, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:active, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:active, .nemo-window .primary-toolbar button:active, headerbar button:active, window.thunar toolbar#location-toolbar button:checked, window.thunar #location-toolbar.inline-toolbar button:checked, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:checked, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:checked, .nemo-window .primary-toolbar button:checked, headerbar button:checked {
  transition: 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  color: #ffffff;
  border-color: transparent;
  background-color: {{ accent }};
  background-clip: padding-box;
}

window.thunar toolbar#location-toolbar button:disabled, window.thunar #location-toolbar.inline-toolbar button:disabled, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:disabled, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:disabled, .nemo-window .primary-toolbar button:disabled, headerbar button:disabled {
  background-color: transparent;
  border-color: transparent;
}

window.thunar toolbar#location-toolbar button:disabled label, window.thunar #location-toolbar.inline-toolbar button:disabled label, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:disabled label, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:disabled label, .nemo-window .primary-toolbar button:disabled label, headerbar button:disabled label, window.thunar toolbar#location-toolbar button:disabled, window.thunar #location-toolbar.inline-toolbar button:disabled, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:disabled, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:disabled, .nemo-window .primary-toolbar button:disabled, headerbar button:disabled {
  color: rgba(208, 200, 200, 0.45);
}

window.thunar toolbar#location-toolbar button:disabled:active, window.thunar #location-toolbar.inline-toolbar button:disabled:active, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:disabled:active, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:disabled:active, .nemo-window .primary-toolbar button:disabled:active, headerbar button:disabled:active, window.thunar toolbar#location-toolbar button:disabled:checked, window.thunar #location-toolbar.inline-toolbar button:disabled:checked, .caja-navigation-window toolbar#Toolbar.primary-toolbar button:disabled:checked, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:disabled:checked, .nemo-window .primary-toolbar button:disabled:checked, headerbar button:disabled:checked {
  color: rgba(255, 255, 255, 0.5);
  border-color: rgba(240, 84, 76, 0.75);
  background-color: rgba(240, 84, 76, 0.75);
}

.linked:not(.vertical):not(.path-bar):not(.stack-switcher) window.thunar toolbar#location-toolbar button:not(:last-child):not(:only-child), window.thunar toolbar#location-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) button:not(:last-child):not(:only-child), .linked:not(.vertical):not(.path-bar):not(.stack-switcher) window.thunar #location-toolbar.inline-toolbar button:not(:last-child):not(:only-child), window.thunar #location-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) button:not(:last-child):not(:only-child), .linked:not(.vertical):not(.path-bar):not(.stack-switcher) .caja-navigation-window toolbar#Toolbar.primary-toolbar button:not(:last-child):not(:only-child), .caja-navigation-window toolbar#Toolbar.primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) button:not(:last-child):not(:only-child), .linked:not(.vertical):not(.path-bar):not(.stack-switcher) .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar button:not(:last-child):not(:only-child), .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) button:not(:last-child):not(:only-child), .linked:not(.vertical):not(.path-bar):not(.stack-switcher) .nemo-window .primary-toolbar button:not(:last-child):not(:only-child), .nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) button:not(:last-child):not(:only-child), .linked:not(.vertical):not(.path-bar):not(.stack-switcher) headerbar button:not(:last-child):not(:only-child), headerbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) button:not(:last-child):not(:only-child) {
  margin-left: 1px;
}

window.thunar toolbar#location-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button, window.thunar #location-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button, .caja-navigation-window toolbar#Toolbar.primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button, .nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button, headerbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button {
  border-radius: 3px;
  border-style: solid;
  border-width: 0;
  box-shadow: none;
}

window.thunar toolbar#location-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child, window.thunar #location-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child, .caja-navigation-window toolbar#Toolbar.primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child, .nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child, headerbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child {
  border-left-style: solid;
  border-left-width: 0;
  border-color: transparent;
}

window.thunar toolbar#location-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:hover, window.thunar #location-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:hover, .caja-navigation-window toolbar#Toolbar.primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:hover, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:hover, .nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:hover, headerbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:hover, window.thunar toolbar#location-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:active, window.thunar #location-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:active, .caja-navigation-window toolbar#Toolbar.primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:active, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:active, .nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:active, headerbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:last-child:active {
  border-color: rgba(0, 0, 0, 0.25);
}

headerbar entry, headerbar button, headerbar separator {
  margin-top: 6px;
  margin-bottom: 6px;
}

headerbar entry progress {
  border-color: #00C487;
  background-image: none;
  background-color: transparent;
}

headerbar entry.warning {
  color: white;
  border-color: rgba(0, 0, 0, 0.42);
  background-color: #9c532a;
}

headerbar entry.warning:focus {
  color: white;
  background-color: #F27835;
}

headerbar entry.warning selection, headerbar entry.warning selection:focus {
  background-color: white;
  color: #F27835;
}

headerbar entry.error {
  color: white;
  border-color: rgba(0, 0, 0, 0.42);
  background-color: #a2322c;
}

headerbar entry.error:focus {
  color: white;
  background-color: #FC4138;
}

headerbar entry.error selection, headerbar entry.error selection:focus {
  background-color: white;
  color: #FC4138;
}

headerbar.selection-mode button {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: #ffffff;
  background-color: rgba(255, 255, 255, 0);
}

headerbar.selection-mode button.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: #ffffff;
  background-color: rgba(255, 255, 255, 0);
}

headerbar.selection-mode button:hover {
  background-color: alpha(#ffffff,0.3);
}

headerbar.selection-mode button:active, headerbar.selection-mode button:checked {
  color: {{ accent }};
  background-color: #ffffff;
  border-color: #ffffff;
}

headerbar.selection-mode button:disabled {
  color: rgba(255, 255, 255, 0.42);
}

headerbar.selection-mode button:disabled label {
  color: rgba(255, 255, 255, 0.42);
}

headerbar.selection-mode button:disabled:checked, headerbar.selection-mode button:disabled:active {
  color: {{ accent }};
  background-color: rgba(255, 255, 255, 0.5);
  border-color: rgba(255, 255, 255, 0.42);
}

headerbar.selection-mode button:backdrop {
  opacity: 0.7;
  background: none;
}

headerbar .linked.path-bar:not(.vertical) > button {
  padding-top: 3px;
  padding-bottom: 6px;
  margin: 1px 0 0 0;
  border: none;
  border-radius: 0;
  color: #d0c8c8;
}

headerbar .linked.path-bar:not(.vertical) > button:hover {
  color: #d0c8c8;
  background-color: #2f2f2f;
}

headerbar .linked.path-bar:not(.vertical) > button:active, headerbar .linked.path-bar:not(.vertical) > button:checked {
  transition: background-color 0.00001s 0.3s;
  animation: header_ripple_effect 0.3s cubic-bezier(0, 0, 0.2, 1);
  color: #d0c8c8;
  background-color: #0e0e0e;
  box-shadow: inset 0 -3px #f26f68;
}

headerbar .linked.path-bar:not(.vertical) > button:disabled {
  color: rgba(208, 200, 200, 0.4);
}

headerbar .linked.stack-switcher:not(.vertical):not(.path-bar) > button {
  background-color: #343434;
  color: #d0c8c8;
  border-width: 0;
  border-color: rgba(0, 0, 0, 0.25);
}

headerbar .linked.stack-switcher:not(.vertical):not(.path-bar) > button:hover {
  background-color: #434343;
}

headerbar .linked.stack-switcher:not(.vertical):not(.path-bar) > button:active, headerbar .linked.stack-switcher:not(.vertical):not(.path-bar) > button:checked {
  color: #ffffff;
  border-color: transparent;
  background-color: {{ accent }};
}

headerbar .linked.stack-switcher:not(.vertical):not(.path-bar) > button:disabled {
  color: rgba(208, 200, 200, 0.4);
}

headerbar .linked.stack-switcher:not(.vertical):not(.path-bar) > button:disabled label {
  color: rgba(208, 200, 200, 0.4);
}

headerbar .linked:not(.vertical):not(.path-bar) > entry {
  border-radius: 3px;
  border: 1px solid rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar) > entry:focus {
  border-color: {{ accent }};
}

headerbar .linked:not(.vertical):not(.path-bar) > entry + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar) > entry.error + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar) > entry + entry.error {
  border-left-color: #FC4138;
}

headerbar .linked:not(.vertical):not(.path-bar) > entry.warning + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

headerbar .linked:not(.vertical):not(.path-bar) > entry + entry.warning {
  border-left-color: #F27835;
}

headerbar .linked:not(.vertical):not(.path-bar) > entry.error + entry.warning {
  border-left-color: #F27835;
}

headerbar .linked:not(.vertical):not(.path-bar) > entry.warning + entry.error {
  border-left-color: #FC4138;
}

headerbar button.suggested-action {
  background-clip: border-box;
  color: white;
  background-color: #2eb398;
  border-color: #2eb398;
}

headerbar button.suggested-action.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: #2eb398;
}

headerbar button.suggested-action:hover {
  background-clip: border-box;
  color: white;
  background-color: #33c7a9;
  border-color: #33c7a9;
}

headerbar button.suggested-action:active, headerbar button.suggested-action:checked {
  background-clip: border-box;
  color: white;
  background-color: #45cfb3;
  border-color: #45cfb3;
}

headerbar button.suggested-action.flat:disabled, headerbar button.suggested-action:disabled {
  background-color: transparent;
  border-color: transparent;
}

headerbar button.suggested-action.flat:disabled label, headerbar button.suggested-action.flat:disabled, headerbar button.suggested-action:disabled label, headerbar button.suggested-action:disabled {
  color: rgba(208, 200, 200, 0.45);
}

headerbar button.suggested-action:backdrop,
headerbar button.suggested-action:backdrop {
  opacity: 0.8;
}

headerbar button.destructive-action {
  background-clip: border-box;
  color: white;
  background-color: #db5b5b;
  border-color: #db5b5b;
}

headerbar button.destructive-action.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: #db5b5b;
}

headerbar button.destructive-action:hover {
  background-clip: border-box;
  color: white;
  background-color: #e07070;
  border-color: #e07070;
}

headerbar button.destructive-action:active, headerbar button.destructive-action:checked {
  background-clip: border-box;
  color: white;
  background-color: #e48585;
  border-color: #e48585;
}

headerbar button.destructive-action.flat:disabled, headerbar button.destructive-action:disabled {
  background-color: transparent;
  border-color: transparent;
}

headerbar button.destructive-action.flat:disabled label, headerbar button.destructive-action.flat:disabled, headerbar button.destructive-action:disabled label, headerbar button.destructive-action:disabled {
  color: rgba(208, 200, 200, 0.45);
}

headerbar button.destructive-action:backdrop,
headerbar button.destructive-action:backdrop {
  opacity: 0.8;
}

headerbar spinbutton:not(.vertical):focus {
  color: #ffffff;
  caret-color: #ffffff;
}

headerbar spinbutton:not(.vertical) button, headerbar spinbutton:not(.vertical) button:disabled {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: rgba(208, 200, 200, 0.18);
}

headerbar spinbutton:not(.vertical) button:hover {
  background-color: rgba(121, 121, 121, 0.42);
}

headerbar spinbutton:not(.vertical) button:active, headerbar spinbutton:not(.vertical) button:checked {
  color: #ffffff;
  border-color: transparent;
  background-color: {{ accent }};
}

headerbar spinbutton:not(.vertical) button:disabled {
  color: rgba(208, 200, 200, 0.42);
}

headerbar spinbutton:not(.vertical) > button + button {
  border-left-style: none;
}

headerbar spinbutton:not(.vertical) > button:hover:not(:active),
headerbar spinbutton:not(.vertical) > button:hover + button {
  box-shadow: inset 1px 0 rgba(0, 0, 0, 0.42);
}

headerbar spinbutton:not(.vertical) > button:disabled + button:not(:disabled):not(:active):not(:checked):not(:hover),
headerbar spinbutton:not(.vertical) > button:not(:disabled):not(:active):not(:checked):not(:hover) + button:disabled {
  box-shadow: inset 1px 0 rgba(0, 0, 0, 0.42);
}

headerbar spinbutton:not(.vertical) > button:first-child:hover:not(:active),
headerbar spinbutton:not(.vertical) > entry + button:not(:active):hover {
  box-shadow: none;
}

headerbar spinbutton:not(.vertical) > entry:focus + button {
  border-left-color: {{ accent }};
}

headerbar combobox:disabled {
  color: rgba(208, 200, 200, 0.42);
}

headerbar combobox > .linked > button.combo {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.42);
}

headerbar combobox > .linked > button.combo image, headerbar combobox > .linked > button.combo image:hover {
  color: inherit;
}

headerbar combobox > .linked > button.combo:hover {
  color: white;
  border-color: {{ accent }};
  background-color: rgba(67, 67, 67, 0.42);
  box-shadow: none;
}

headerbar combobox > .linked > button.combo:disabled {
  color: rgba(208, 200, 200, 0.55);
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.85);
}

headerbar combobox > .linked > entry.combo:dir(ltr) {
  border-right-style: none;
}

headerbar combobox > .linked > entry.combo:dir(ltr):focus {
  box-shadow: 1px 0 {{ accent }};
}

headerbar combobox > .linked > entry.combo:dir(rtl) {
  border-left-style: none;
}

headerbar combobox > .linked > entry.combo:dir(rtl):focus {
  box-shadow: -1px 0 {{ accent }};
}

headerbar combobox > .linked > button.combo:dir(ltr), headerbar combobox > .linked > button.combo:dir(ltr):hover, headerbar combobox > .linked > button.combo:dir(ltr):active, headerbar combobox > .linked > button.combo:dir(ltr):checked, headerbar combobox > .linked > button.combo:dir(ltr):disabled {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}

headerbar combobox > .linked > button.combo:dir(rtl), headerbar combobox > .linked > button.combo:dir(rtl):hover, headerbar combobox > .linked > button.combo:dir(rtl):active, headerbar combobox > .linked > button.combo:dir(rtl):checked, headerbar combobox > .linked > button.combo:dir(rtl):disabled {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}

headerbar switch:backdrop {
  opacity: 0.75;
}

headerbar progressbar trough {
  background-color: rgba(0, 0, 0, 0.42);
}

headerbar progressbar:backdrop {
  opacity: 0.75;
}

headerbar scale:backdrop {
  opacity: 0.75;
}

headerbar scale slider {
  background-color: #343434;
  border-color: rgba(0, 0, 0, 0.72);
}

headerbar scale slider:hover {
  background-color: #414141;
  border-color: rgba(0, 0, 0, 0.72);
}

headerbar scale slider:active {
  background-color: {{ accent }};
  border-color: {{ accent }};
}

headerbar scale slider:disabled {
  background-color: #2c2c2c;
  border-color: rgba(0, 0, 0, 0.72);
}

headerbar scale trough {
  background-color: rgba(0, 0, 0, 0.42);
}

headerbar scale trough:disabled {
  background-color: rgba(0, 0, 0, 0.9);
}

separator:first-child + headerbar, separator:first-child + headerbar:backdrop, headerbar:first-child, headerbar:first-child:backdrop {
  border-top-left-radius: 2px;
}

headerbar:last-child, headerbar:last-child:backdrop {
  border-top-right-radius: 2px;
}

stack headerbar:first-child, stack headerbar:last-child {
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
}

window.tiled headerbar, window.tiled headerbar:first-child, window.tiled headerbar:last-child, window.tiled headerbar:only-child, window.tiled-top headerbar, window.tiled-top headerbar:first-child, window.tiled-top headerbar:last-child, window.tiled-top headerbar:only-child, window.tiled-right headerbar, window.tiled-right headerbar:first-child, window.tiled-right headerbar:last-child, window.tiled-right headerbar:only-child, window.tiled-bottom headerbar, window.tiled-bottom headerbar:first-child, window.tiled-bottom headerbar:last-child, window.tiled-bottom headerbar:only-child, window.tiled-left headerbar, window.tiled-left headerbar:first-child, window.tiled-left headerbar:last-child, window.tiled-left headerbar:only-child, window.maximized headerbar, window.maximized headerbar:first-child, window.maximized headerbar:last-child, window.maximized headerbar:only-child, window.fullscreen headerbar, window.fullscreen headerbar:first-child, window.fullscreen headerbar:last-child, window.fullscreen headerbar:only-child, window.solid-csd headerbar, window.solid-csd headerbar:first-child, window.solid-csd headerbar:last-child, window.solid-csd headerbar:only-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

window > .titlebar:not(headerbar), window > .titlebar:not(headerbar):backdrop, window.csd > .titlebar:not(headerbar), window.csd > .titlebar:not(headerbar):backdrop {
  padding: 0;
  background: none;
  border: none;
}

.titlebar:not(headerbar) > separator {
  background-image: linear-gradient(to bottom, #1a1a1a, #1a1a1a);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
}

.titlebar:not(headerbar) > separator:backdrop {
  transition: 200ms ease-out;
  background-image: linear-gradient(to bottom, #272727, #272727);
  box-shadow: none;
}

.primary-toolbar:not(.libreoffice-toolbar) separator, headerbar separator.titlebutton {
  min-width: 0;
  min-height: 0;
  background: none;
  border-width: 0 0;
  border-image: linear-gradient(to bottom, rgba(208, 200, 200, 0) 25%, rgba(208, 200, 200, 0.35) 25%, rgba(208, 200, 200, 0.35) 75%, rgba(208, 200, 200, 0) 75%) 0 1/0 0 stretch;
}

.primary-toolbar:not(.libreoffice-toolbar) separator:backdrop, headerbar separator.titlebutton:backdrop {
  opacity: 0.6;
}

.path-bar button:hover {
  background-color: rgba(203, 191, 191, 0.06);
}

.path-bar button:checked, .path-bar button:active {
  background-color: {{ accent }};
  border-color: {{ accent }};
}

.path-bar button:checked:hover, .path-bar button:active:hover {
  background-color: #f26a64;
  border-color: #f26a64;
}

.path-bar button.text-button, .path-bar button.image-button, .path-bar button {
  padding-left: 6px;
  padding-right: 6px;
}

.path-bar button.text-button.image-button label {
  padding-left: 0;
  padding-right: 0;
}

.path-bar button.text-button.image-button label:last-child, .path-bar button label:last-child {
  padding-right: 10px;
}

.path-bar button.text-button.image-button label:first-child, .path-bar button label:first-child {
  padding-left: 10px;
}

.path-bar button.slider-button, .path-bar button:not(.image-button):not(.text-button) {
  padding-left: 1px;
  padding-right: 1px;
}

.path-bar button image {
  padding-left: 4px;
  padding-right: 4px;
}

treeview.view {
  border-left-color: rgba(203, 191, 191, 0.15);
  border-top-color: rgba(0, 0, 0, 0.1);
}

* {
  -GtkTreeView-horizontal-separator: 4;
  -GtkTreeView-grid-line-width: 1;
  -GtkTreeView-grid-line-pattern: '';
  -GtkTreeView-tree-line-width: 1;
  -GtkTreeView-tree-line-pattern: '';
  -GtkTreeView-expander-size: 16;
}

treeview.view acceleditor > label {
  background-color: {{ accent }};
}

treeview.view:selected, treeview.view:selected:focus {
  border-radius: 0;
  border-left-color: #f8aaa6;
  border-top-color: rgba(203, 191, 191, 0.1);
}

treeview.view:disabled {
  color: rgba(203, 191, 191, 0.45);
}

treeview.view:disabled:selected {
  color: #f69894;
}

treeview.view.separator {
  min-height: 2px;
  color: rgba(0, 0, 0, 0.1);
}

treeview.view:drop(active) {
  border-style: solid none;
  border-width: 1px;
  border-color: #de8a86;
}

treeview.view.after:drop(active) {
  border-top-style: none;
}

treeview.view.before:drop(active) {
  border-bottom-style: none;
}

treeview.view.expander {
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
  color: #797373;
}

treeview.view.expander:dir(rtl) {
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic-rtl");
}

treeview.view.expander:hover {
  color: #cbbfbf;
}

treeview.view.expander:selected {
  color: #fbccc9;
}

treeview.view.expander:selected:hover {
  color: #ffffff;
}

treeview.view.expander:checked {
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
}

treeview.view.progressbar, treeview.view.progressbar:focus {
  color: #ffffff;
  border-radius: 3px;
  background-color: #00C487;
}

treeview.view.progressbar:selected, treeview.view.progressbar:selected:focus, treeview.view.progressbar:focus:selected, treeview.view.progressbar:focus:selected:focus {
  color: {{ accent }};
  box-shadow: none;
  background-color: #ffffff;
}

treeview.view.trough {
  color: #cbbfbf;
  background-color: rgba(0, 0, 0, 0.25);
  border-radius: 3px;
  border-width: 0;
}

treeview.view.trough:selected, treeview.view.trough:selected:focus {
  color: #ffffff;
  background-color: rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  border-width: 0;
}

treeview.view header button {
  min-height: 0;
  min-width: 0;
  padding: 3px 6px;
  font-weight: bold;
  color: #aaa0a0;
  background-color: #262626;
  background-image: none;
  border-style: none solid none none;
  border-radius: 0;
  border-image: linear-gradient(to bottom, #262626 20%, rgba(255, 255, 255, 0.12) 20%, rgba(255, 255, 255, 0.12) 80%, #262626 80%) 0 1 0 0/0 1px 0 0 stretch;
}

treeview.view header button:hover {
  color: {{ accent }};
}

treeview.view header button:active {
  color: #cbbfbf;
}

treeview.view header button:active, treeview.view header button:hover {
  background-color: #262626;
}

treeview.view header button:active:hover {
  color: #cbbfbf;
}

treeview.view header button:disabled {
  border-color: #222222;
  background-image: none;
}

treeview.view header button:last-child {
  border-right-style: none;
  border-image: none;
}

treeview.view button.dnd, treeview.view button.dnd:selected, treeview.view button.dnd:hover, treeview.view button.dnd:active,
treeview.view header.button.dnd,
treeview.view header.button.dnd:selected,
treeview.view header.button.dnd:hover,
treeview.view header.button.dnd:active {
  padding: 0 6px;
  transition: none;
  color: #ffffff;
  background-color: {{ accent }};
  border-radius: 0;
  border-style: none;
}

menubar,
.menubar {
  -GtkWidget-window-dragging: true;
  padding: 0 0 0 0;
  background-color: #1a1a1a;
  color: #d0c8c8;
}

menubar:backdrop,
.menubar:backdrop {
  color: rgba(208, 200, 200, 0.7);
}

menubar > menuitem,
.menubar > menuitem {
  transition: all 0.2s cubic-bezier(0, 0, 0.2, 1);
  padding: 4px 8px;
  border: none;
  border-radius: 2px 2px 0 0;
}

menubar > menuitem:hover,
.menubar > menuitem:hover {
  background-color: {{ accent }};
  color: #ffffff;
}

menubar > menuitem:disabled,
.menubar > menuitem:disabled {
  color: rgba(208, 200, 200, 0.45);
  border-color: transparent;
}

menubar > menuitem label:disabled,
.menubar > menuitem label:disabled {
  color: rgba(208, 200, 200, 0.45);
}

menubar > menuitem > window.background.popup > menu,
.menubar > menuitem > window.background.popup > menu {
  border-radius: 0 0 2px 2px;
}

menu,
.menu {
  padding: 4px 0;
  border-radius: 0;
  background-color: #222222;
  border: 1px solid rgba(0, 0, 0, 0.25);
}

.csd menu, .csd .menu {
  padding: 4px 0;
  border-radius: 2px;
  border: none;
}

menu separator, .csd menu separator,
.menu separator, .csd .menu separator {
  margin: 2px 0;
  background-color: #222222;
}

menu .separator:not(label), .csd menu .separator:not(label),
.menu .separator:not(label), .csd .menu .separator:not(label) {
  color: #222222;
}

menu menuitem,
.menu menuitem {
  min-height: 16px;
  min-width: 40px;
  padding: 5px;
  color: #b5abab;
}

menu menuitem:hover,
.menu menuitem:hover {
  color: #ffffff;
  background-color: {{ accent }};
}

menu menuitem:disabled,
.menu menuitem:disabled {
  color: rgba(203, 191, 191, 0.45);
}

menu menuitem label:disabled,
.menu menuitem label:disabled {
  color: rgba(203, 191, 191, 0.45);
}

menu menuitem arrow,
.menu menuitem arrow {
  min-height: 16px;
  min-width: 16px;
}

menu menuitem arrow:dir(ltr),
.menu menuitem arrow:dir(ltr) {
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
  margin-left: 10px;
}

menu menuitem arrow:dir(rtl),
.menu menuitem arrow:dir(rtl) {
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic-rtl");
  margin-right: 10px;
}

menuitem accelerator {
  color: alpha(currentColor,0.55);
}

menuitem check, menuitem radio {
  min-height: 16px;
  min-width: 16px;
}

menuitem check:dir(ltr), menuitem radio:dir(ltr) {
  margin-right: 6px;
  margin-left: 2px;
}

menuitem check:dir(rtl), menuitem radio:dir(rtl) {
  margin-left: 6px;
  margin-right: 2px;
}

menu > arrow,
.menu > arrow {
  min-width: 16px;
  min-height: 16px;
  padding: 4px;
  background-color: #222222;
  border-radius: 0;
}

menu > arrow.top,
.menu > arrow.top {
  margin-top: -6px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
  -gtk-icon-source: -gtk-icontheme("pan-up-symbolic");
}

menu > arrow.bottom,
.menu > arrow.bottom {
  margin-bottom: -12px;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
}

menu > arrow:hover,
.menu > arrow:hover {
  background-color: #373535;
}

menu > arrow:disabled,
.menu > arrow:disabled {
  color: transparent;
  background-color: transparent;
  border-color: transparent;
}

popover,
popover.background {
  padding: 2px;
  background-clip: border-box;
  background-color: #222222;
  box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.35);
}

.csd popover, popover, .csd popover.background,
popover.background {
  border: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 3px;
}

popover separator,
popover.background separator {
  background-color: #222222;
}

popover label.separator,
popover.background label.separator {
  color: #cbbfbf;
}

popover > list,
popover > .view,
popover > toolbar,
popover > .inline-toolbar,
popover.background > list,
popover.background > .view,
popover.background > toolbar,
popover.background > .inline-toolbar {
  border-style: none;
  background-color: transparent;
}

popover button:not(.suggested-action):not(.destructive-action):hover,
popover.background button:not(.suggested-action):not(.destructive-action):hover {
  background-color: #404040;
  color: #b5abab;
}

popover button:not(.suggested-action):not(.destructive-action):checked, popover button:not(.suggested-action):not(.destructive-action):active,
popover.background button:not(.suggested-action):not(.destructive-action):checked,
popover.background button:not(.suggested-action):not(.destructive-action):active {
  background-color: {{ accent }};
  color: #ffffff;
}

cursor-handle {
  background-color: transparent;
  background-image: none;
  box-shadow: none;
  border-style: none;
}

cursor-handle.top {
  -gtk-icon-source: -gtk-icontheme("selection-start-symbolic");
}

cursor-handle.bottom {
  -gtk-icon-source: -gtk-icontheme("selection-end-symbolic");
}

notebook {
  padding: 0;
}

notebook.frame {
  border: 1px solid rgba(0, 0, 0, 0.25);
}

notebook > stack:not(:only-child) {
  background-color: #262626;
}

notebook > header {
  padding: 0;
  background-color: #222222;
}

notebook > header.top {
  padding-bottom: 0;
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

notebook > header.top > tabs > tab {
  padding: 3px 16px 6px 16px;
  min-width: 16px;
  min-height: 16px;
  border-radius: 0;
  outline-offset: -4px;
  border: none;
  border-bottom: none;
}

notebook > header.top > tabs > tab:not(:only-child):first-child {
  margin-left: 6px;
}

notebook > header.top > tabs > tab:not(:only-child):last-child {
  margin-right: 6px;
}

notebook > header.top > tabs > tab:hover {
  box-shadow: inset 0 -2px alpha({{ accent }},0.6), 0 1px alpha({{ accent }},0.6);
}

notebook > header.top > tabs > tab:checked {
  box-shadow: inset 0 -2px {{ accent }}, 0 1px {{ accent }};
}

notebook > header.bottom {
  padding-top: 0;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

notebook > header.bottom > tabs > tab {
  padding: 3px 16px 6px 16px;
  min-width: 16px;
  min-height: 16px;
  border-radius: 0;
  outline-offset: -4px;
  border: none;
  border-top: none;
}

notebook > header.bottom > tabs > tab:not(:only-child):first-child {
  margin-left: 6px;
}

notebook > header.bottom > tabs > tab:not(:only-child):last-child {
  margin-right: 6px;
}

notebook > header.bottom > tabs > tab:hover {
  box-shadow: inset 0 2px alpha({{ accent }},0.6), 0 -1px alpha({{ accent }},0.6);
}

notebook > header.bottom > tabs > tab:checked {
  box-shadow: inset 0 2px {{ accent }}, 0 -1px {{ accent }};
}

notebook > header.right {
  padding-left: 0;
  border-left: 1px solid rgba(0, 0, 0, 0.25);
}

notebook > header.right > tabs > tab {
  padding: 3px 16px 6px 16px;
  min-width: 16px;
  min-height: 16px;
  border-radius: 0;
  outline-offset: -4px;
  border: none;
  border-left: none;
}

notebook > header.right > tabs > tab:not(:only-child):first-child {
  margin-top: 6px;
}

notebook > header.right > tabs > tab:not(:only-child):last-child {
  margin-bottom: 6px;
}

notebook > header.right > tabs > tab:hover {
  box-shadow: inset 2px 0 alpha({{ accent }},0.6), -1px 0 alpha({{ accent }},0.6);
}

notebook > header.right > tabs > tab:checked {
  box-shadow: inset 2px 0 {{ accent }}, -1px 0 {{ accent }};
}

notebook > header.left {
  padding-right: 0;
  border-right: 1px solid rgba(0, 0, 0, 0.25);
}

notebook > header.left > tabs > tab {
  padding: 3px 16px 6px 16px;
  min-width: 16px;
  min-height: 16px;
  border-radius: 0;
  outline-offset: -4px;
  border: none;
  border-right: none;
}

notebook > header.left > tabs > tab:not(:only-child):first-child {
  margin-top: 6px;
}

notebook > header.left > tabs > tab:not(:only-child):last-child {
  margin-bottom: 6px;
}

notebook > header.left > tabs > tab:hover {
  box-shadow: inset -2px 0 alpha({{ accent }},0.6), 1px 0 alpha({{ accent }},0.6);
}

notebook > header.left > tabs > tab:checked {
  box-shadow: inset -2px 0 {{ accent }}, 1px 0 {{ accent }};
}

notebook > header.top > tabs > arrow.up, notebook > header.bottom > tabs > arrow.up {
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
}

notebook > header.top > tabs > arrow.up:last-child, notebook > header.bottom > tabs > arrow.up:last-child {
  margin-left: 2px;
}

notebook > header.top > tabs > arrow.down, notebook > header.bottom > tabs > arrow.down {
  -gtk-icon-source: -gtk-icontheme("pan-start-symbolic");
}

notebook > header.top > tabs > arrow.down:first-child, notebook > header.bottom > tabs > arrow.down:first-child {
  margin-right: 2px;
}

notebook > header.left > tabs > arrow.up, notebook > header.right > tabs > arrow.up {
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
}

notebook > header.left > tabs > arrow.up:last-child, notebook > header.right > tabs > arrow.up:last-child {
  margin-top: 2px;
}

notebook > header.left > tabs > arrow.down, notebook > header.right > tabs > arrow.down {
  -gtk-icon-source: -gtk-icontheme("pan-up-symbolic");
}

notebook > header.left > tabs > arrow.down:first-child, notebook > header.right > tabs > arrow.down:first-child {
  margin-bottom: 2px;
}

notebook > header > tabs > arrow {
  color: rgba(203, 191, 191, 0.45);
}

notebook > header > tabs > arrow:hover {
  color: rgba(203, 191, 191, 0.725);
}

notebook > header > tabs > arrow:active {
  color: #cbbfbf;
}

notebook > header > tabs > arrow:disabled {
  color: rgba(203, 191, 191, 0.7);
}

notebook > header > tabs > tab {
  color: rgba(203, 191, 191, 0.45);
  background-color: rgba(34, 34, 34, 0);
}

notebook > header > tabs > tab:hover:not(:checked) {
  color: rgba(203, 191, 191, 0.725);
  transition: 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

notebook > header > tabs > tab:checked {
  color: #cbbfbf;
  transition: 300ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

notebook > header > tabs > tab button.flat {
  border-radius: 100%;
  min-height: 16px;
  min-width: 16px;
  padding: 0;
  margin: 4px 0;
  color: #908888;
}

notebook > header > tabs > tab button.flat:hover {
  color: #ff4d4d;
  background-color: #151515;
}

notebook > header > tabs > tab button.flat:active, notebook > header > tabs > tab button.flat:active:hover {
  color: {{ accent }};
  background-color: #0e0e0e;
}

notebook > header button {
  margin: 2px;
}

scrollbar {
  background-color: #232323;
  transition: 300ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

* {
  -GtkScrollbar-has-backward-stepper: false;
  -GtkScrollbar-has-forward-stepper: false;
}

scrollbar.top {
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

scrollbar.bottom {
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

scrollbar.left {
  border-right: 1px solid rgba(0, 0, 0, 0.25);
}

scrollbar.right {
  border-left: 1px solid rgba(0, 0, 0, 0.25);
}

scrollbar button {
  border: none;
}

scrollbar.vertical button.down {
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
}

scrollbar.vertical button.up {
  -gtk-icon-source: -gtk-icontheme("pan-up-symbolic");
}

scrollbar.horizontal button.down {
  -gtk-icon-source: -gtk-icontheme("pan-right-symbolic");
}

scrollbar.horizontal button.up {
  -gtk-icon-source: -gtk-icontheme("pan-left-symbolic");
}

scrollbar slider {
  min-width: 6px;
  min-height: 6px;
  margin: -1px;
  border: 4px solid transparent;
  border-radius: 8px;
  background-clip: padding-box;
  background-color: #666161;
}

scrollbar slider:hover {
  background-color: #555151;
}

scrollbar slider:hover:active {
  background-color: {{ accent }};
}

scrollbar slider:disabled {
  background-color: transparent;
}

scrollbar.fine-tune slider {
  min-width: 4px;
  min-height: 4px;
}

scrollbar.fine-tune.horizontal slider {
  border-width: 5px 4px;
}

scrollbar.fine-tune.vertical slider {
  border-width: 4px 5px;
}

scrollbar.overlay-indicator:not(.dragging):not(.hovering) {
  opacity: 0.4;
  border-color: transparent;
  background-color: transparent;
}

scrollbar.overlay-indicator:not(.dragging):not(.hovering) slider {
  margin: 0;
  min-width: 4px;
  min-height: 4px;
  background-color: #989090;
  border: 1px solid rgba(0, 0, 0, 0.3);
}

scrollbar.overlay-indicator.horizontal:not(.dragging):not(.hovering) slider {
  margin: 0 2px;
  min-width: 40px;
}

scrollbar.overlay-indicator.vertical:not(.dragging):not(.hovering) slider {
  margin: 2px 0;
  min-height: 40px;
}

scrollbar.overlay-indicator.dragging, scrollbar.overlay-indicator.hovering {
  opacity: 0.99;
}

scrollbar.horizontal slider {
  min-width: 40px;
}

scrollbar.vertical slider {
  min-height: 40px;
}

switch {
  font-size: 0;
  min-width: 52px;
  min-height: 24px;
  background-size: 52px 24px;
  background-repeat: no-repeat;
  background-position: center center;
  transition: all 350ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

switch slider {
  min-width: 0;
  min-height: 0;
}

switch, switch slider {
  outline-color: transparent;
  color: transparent;
  border: none;
  box-shadow: none;
}

switch {
  background-image: -gtk-scaled(url("assets/switch-dark.png"), url("assets/switch-dark@2.png"));
}

menuitem:hover switch,
row:selected switch,
infobar switch {
  background-image: -gtk-scaled(url("assets/switch-selected.png"), url("assets/switch-selected@2.png"));
}

headerbar switch,
.primary-toolbar switch {
  background-image: -gtk-scaled(url("assets/switch-header-dark.png"), url("assets/switch-header-dark@2.png"));
}

switch:checked {
  background-image: -gtk-scaled(url("assets/switch-active-dark.png"), url("assets/switch-active-dark@2.png"));
}

menuitem:hover switch:checked,
row:selected switch:checked,
infobar switch:checked {
  background-image: -gtk-scaled(url("assets/switch-active-selected.png"), url("assets/switch-active-selected@2.png"));
}

headerbar switch:checked,
.primary-toolbar switch:checked {
  background-image: -gtk-scaled(url("assets/switch-active-header-dark.png"), url("assets/switch-active-header-dark@2.png"));
}

switch:hover {
  background-image: -gtk-scaled(url("assets/switch-hover-dark.png"), url("assets/switch-hover-dark@2.png"));
}

menuitem:hover switch:hover,
row:selected switch:hover,
infobar switch:hover {
  background-image: -gtk-scaled(url("assets/switch-hover-selected.png"), url("assets/switch-hover-selected@2.png"));
}

headerbar switch:hover,
.primary-toolbar switch:hover {
  background-image: -gtk-scaled(url("assets/switch-hover-header-dark.png"), url("assets/switch-hover-header-dark@2.png"));
}

switch:checked:hover {
  background-image: -gtk-scaled(url("assets/switch-active-hover-dark.png"), url("assets/switch-active-hover-dark@2.png"));
}

menuitem:hover switch:checked:hover,
row:selected switch:checked:hover,
infobar switch:checked:hover {
  background-image: -gtk-scaled(url("assets/switch-active-hover-selected.png"), url("assets/switch-active-hover-selected@2.png"));
}

headerbar switch:checked:hover,
.primary-toolbar switch:checked:hover {
  background-image: -gtk-scaled(url("assets/switch-active-hover-header-dark.png"), url("assets/switch-active-hover-header-dark@2.png"));
}

switch:disabled {
  background-image: -gtk-scaled(url("assets/switch-insensitive-dark.png"), url("assets/switch-insensitive-dark@2.png"));
}

menuitem:hover switch:disabled,
row:selected switch:disabled,
infobar switch:disabled {
  background-image: -gtk-scaled(url("assets/switch-insensitive-selected.png"), url("assets/switch-insensitive-selected@2.png"));
}

headerbar switch:disabled,
.primary-toolbar switch:disabled {
  background-image: -gtk-scaled(url("assets/switch-insensitive-header-dark.png"), url("assets/switch-insensitive-header-dark@2.png"));
}

switch:checked:disabled {
  background-image: -gtk-scaled(url("assets/switch-active-insensitive-dark.png"), url("assets/switch-active-insensitive-dark@2.png"));
}

menuitem:hover switch:checked:disabled,
row:selected switch:checked:disabled,
infobar switch:checked:disabled {
  background-image: -gtk-scaled(url("assets/switch-active-insensitive-selected.png"), url("assets/switch-active-insensitive-selected@2.png"));
}

headerbar switch:checked:disabled,
.primary-toolbar switch:checked:disabled {
  background-image: -gtk-scaled(url("assets/switch-active-insensitive-header-dark.png"), url("assets/switch-active-insensitive-header-dark@2.png"));
}

.check,
check,
treeview.check {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-unchecked-dark.png"), url("assets/checkbox-unchecked-dark@2.png"));
}

.osd check,
filechooser actionbar check {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-unchecked-dark.png"), url("assets/checkbox-unchecked-dark@2.png"));
}

menuitem check:hover,
.view check:selected,
treeview.check:selected,
row:selected check,
infobar check {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-unchecked-selected.png"), url("assets/checkbox-unchecked-selected@2.png"));
}

.check:disabled,
check:disabled,
treeview.check:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-unchecked-insensitive-dark.png"), url("assets/checkbox-unchecked-insensitive-dark@2.png"));
}

.osd check:disabled,
filechooser actionbar check:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-unchecked-insensitive-dark.png"), url("assets/checkbox-unchecked-insensitive-dark@2.png"));
}

menuitem check:disabled:hover,
.view check:disabled:selected,
treeview.check:disabled:selected,
row:selected check:disabled,
infobar check:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-unchecked-insensitive-selected.png"), url("assets/checkbox-unchecked-insensitive-selected@2.png"));
}

.check:indeterminate,
check:indeterminate,
treeview.check:indeterminate {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-mixed-dark.png"), url("assets/checkbox-mixed-dark@2.png"));
}

.osd check:indeterminate,
filechooser actionbar check:indeterminate {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-mixed-dark.png"), url("assets/checkbox-mixed-dark@2.png"));
}

menuitem check:indeterminate:hover,
.view check:indeterminate:selected,
treeview.check:indeterminate:selected,
row:selected check:indeterminate,
infobar check:indeterminate {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-mixed-selected.png"), url("assets/checkbox-mixed-selected@2.png"));
}

.check:indeterminate:disabled,
check:indeterminate:disabled,
treeview.check:indeterminate:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-mixed-insensitive-dark.png"), url("assets/checkbox-mixed-insensitive-dark@2.png"));
}

.osd check:indeterminate:disabled,
filechooser actionbar check:indeterminate:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-mixed-insensitive-dark.png"), url("assets/checkbox-mixed-insensitive-dark@2.png"));
}

menuitem check:indeterminate:disabled:hover,
.view check:indeterminate:disabled:selected,
treeview.check:indeterminate:disabled:selected,
row:selected check:indeterminate:disabled,
infobar check:indeterminate:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-mixed-insensitive-selected.png"), url("assets/checkbox-mixed-insensitive-selected@2.png"));
}

.check:checked,
check:checked,
treeview.check:checked {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-dark.png"), url("assets/checkbox-checked-dark@2.png"));
}

.osd check:checked,
filechooser actionbar check:checked {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-dark.png"), url("assets/checkbox-checked-dark@2.png"));
}

menuitem check:checked:hover,
.view check:checked:selected,
treeview.check:checked:selected,
row:selected check:checked,
infobar check:checked {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-selected.png"), url("assets/checkbox-checked-selected@2.png"));
}

.check:checked:disabled,
check:checked:disabled,
treeview.check:checked:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-insensitive-dark.png"), url("assets/checkbox-checked-insensitive-dark@2.png"));
}

.osd check:checked:disabled,
filechooser actionbar check:checked:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-insensitive-dark.png"), url("assets/checkbox-checked-insensitive-dark@2.png"));
}

menuitem check:checked:disabled:hover,
.view check:checked:disabled:selected,
treeview.check:checked:disabled:selected,
row:selected check:checked:disabled,
infobar check:checked:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-insensitive-selected.png"), url("assets/checkbox-checked-insensitive-selected@2.png"));
}

.radio,
radio,
treeview.radio {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-unchecked-dark.png"), url("assets/radio-unchecked-dark@2.png"));
}

.osd radio,
filechooser actionbar radio {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-unchecked-dark.png"), url("assets/radio-unchecked-dark@2.png"));
}

menuitem radio:hover,
.view radio:selected,
treeview.radio:selected,
row:selected radio,
infobar radio {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-unchecked-selected.png"), url("assets/radio-unchecked-selected@2.png"));
}

.radio:disabled,
radio:disabled,
treeview.radio:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-unchecked-insensitive-dark.png"), url("assets/radio-unchecked-insensitive-dark@2.png"));
}

.osd radio:disabled,
filechooser actionbar radio:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-unchecked-insensitive-dark.png"), url("assets/radio-unchecked-insensitive-dark@2.png"));
}

menuitem radio:disabled:hover,
.view radio:disabled:selected,
treeview.radio:disabled:selected,
row:selected radio:disabled,
infobar radio:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-unchecked-insensitive-selected.png"), url("assets/radio-unchecked-insensitive-selected@2.png"));
}

.radio:indeterminate,
radio:indeterminate,
treeview.radio:indeterminate {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-mixed-dark.png"), url("assets/radio-mixed-dark@2.png"));
}

.osd radio:indeterminate,
filechooser actionbar radio:indeterminate {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-mixed-dark.png"), url("assets/radio-mixed-dark@2.png"));
}

menuitem radio:indeterminate:hover,
.view radio:indeterminate:selected,
treeview.radio:indeterminate:selected,
row:selected radio:indeterminate,
infobar radio:indeterminate {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-mixed-selected.png"), url("assets/radio-mixed-selected@2.png"));
}

.radio:indeterminate:disabled,
radio:indeterminate:disabled,
treeview.radio:indeterminate:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-mixed-insensitive-dark.png"), url("assets/radio-mixed-insensitive-dark@2.png"));
}

.osd radio:indeterminate:disabled,
filechooser actionbar radio:indeterminate:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-mixed-insensitive-dark.png"), url("assets/radio-mixed-insensitive-dark@2.png"));
}

menuitem radio:indeterminate:disabled:hover,
.view radio:indeterminate:disabled:selected,
treeview.radio:indeterminate:disabled:selected,
row:selected radio:indeterminate:disabled,
infobar radio:indeterminate:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-mixed-insensitive-selected.png"), url("assets/radio-mixed-insensitive-selected@2.png"));
}

.radio:checked,
radio:checked,
treeview.radio:checked {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-checked-dark.png"), url("assets/radio-checked-dark@2.png"));
}

.osd radio:checked,
filechooser actionbar radio:checked {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-checked-dark.png"), url("assets/radio-checked-dark@2.png"));
}

menuitem radio:checked:hover,
.view radio:checked:selected,
treeview.radio:checked:selected,
row:selected radio:checked,
infobar radio:checked {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-checked-selected.png"), url("assets/radio-checked-selected@2.png"));
}

.radio:checked:disabled,
radio:checked:disabled,
treeview.radio:checked:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-checked-insensitive-dark.png"), url("assets/radio-checked-insensitive-dark@2.png"));
}

.osd radio:checked:disabled,
filechooser actionbar radio:checked:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-checked-insensitive-dark.png"), url("assets/radio-checked-insensitive-dark@2.png"));
}

menuitem radio:checked:disabled:hover,
.view radio:checked:disabled:selected,
treeview.radio:checked:disabled:selected,
row:selected radio:checked:disabled,
infobar radio:checked:disabled {
  -gtk-icon-source: -gtk-scaled(url("assets/radio-checked-insensitive-selected.png"), url("assets/radio-checked-insensitive-selected@2.png"));
}

.view.content-view.check:not(list) {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-selectionmode-dark.png"), url("assets/checkbox-selectionmode-dark@2.png"));
  background-color: transparent;
}

.view.content-view.check:checked:not(list) {
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-selectionmode-dark.png"), url("assets/checkbox-checked-selectionmode-dark@2.png"));
  background-color: transparent;
}

checkbutton.text-button, radiobutton.text-button {
  padding: 2px 0;
  outline-offset: 0;
}

checkbutton.text-button:hover, radiobutton.text-button:hover {
  color: #a99595;
}

checkbutton.text-button:disabled, radiobutton.text-button:disabled {
  color: rgba(203, 191, 191, 0.45);
}

checkbutton label:not(:only-child):first-child, radiobutton label:not(:only-child):first-child {
  margin-left: 4px;
}

checkbutton label:not(:only-child):last-child, radiobutton label:not(:only-child):last-child {
  margin-right: 4px;
}

check,
radio {
  min-width: 16px;
  min-height: 16px;
  margin: 0 2px;
}

check:only-child, menu menuitem check,
radio:only-child, menu menuitem radio {
  margin: 0;
}


scale {
  min-height: 15px;
  min-width: 15px;
  padding: 3px;
}


scale.horizontal trough {
  padding: 0 4px;
}


scale.horizontal highlight,
scale.horizontal fill {
  margin: 0 -4px;
}


scale.vertical trough {
  padding: 4px 0;
}


scale.vertical highlight,
scale.vertical fill {
  margin: -4px 0;
}


scale slider {
  min-height: 15px;
  min-width: 15px;
  margin: -6px;
}


scale.fine-tune slider {
  margin: -4px;
}


scale.fine-tune fill,
scale.fine-tune highlight,
scale.fine-tune trough {
  border-radius: 5px;
  -gtk-outline-radius: 7px;
}


scale trough {
  outline-offset: 2px;
  -gtk-outline-radius: 4.5px;
  border-radius: 2.5px;
  background-color: rgba(0, 0, 0, 0.25);
}


scale trough:disabled {
  background-color: rgba(0, 0, 0, 0.15);
}

.osd scale trough {
  background-color: rgba(59, 59, 59, 0.95);
}

.osd scale trough highlight {
  background-color: {{ accent }};
}


scale highlight {
  border-radius: 2.5px;
  background-color: {{ accent }};
}


scale highlight:disabled {
  background-color: rgba(240, 84, 76, 0.55);
}


scale fill {
  border-radius: 2.5px;
  background-color: rgba(240, 84, 76, 0.5);
}


scale fill:disabled {
  background-color: transparent;
}


scale slider {
  background-color: #ffffff;
  border: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 100%;
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  transition-property: background, border;
}


scale slider:hover {
  background-color: #f1615a;
  border-color: {{ accent }};
}


scale slider:active {
  background-clip: border-box;
  background-color: #ef473e;
  border-color: {{ accent }};
}


scale slider:disabled {
  background-color: #e6e6e6;
  border-color: rgba(0, 0, 0, 0.25);
}

.osd scale slider {
  background-clip: border-box;
  background-color: {{ accent }};
  border-color: {{ accent }};
}

.osd scale slider:hover {
  background-color: #f4817b;
  border-color: #f4817b;
}

.osd scale slider:active {
  background-color: #ec271d;
  border-color: #ec271d;
}


scale value {
  color: alpha(currentColor,0.4);
}


scale marks {
  color: alpha(currentColor,0.4);
}


scale marks.top {
  margin-bottom: 1px;
  margin-top: -4px;
}


scale marks.bottom {
  margin-top: 1px;
  margin-bottom: -4px;
}


scale marks.top {
  margin-right: 1px;
  margin-left: -4px;
}


scale marks.bottom {
  margin-left: 1px;
  margin-right: -4px;
}


scale.fine-tune marks.top {
  margin-bottom: 0px;
  margin-top: -2px;
}


scale.fine-tune marks.bottom {
  margin-top: 0px;
  margin-bottom: -2px;
}


scale.fine-tune marks.top {
  margin-right: 0px;
  margin-left: -2px;
}


scale.fine-tune marks.bottom {
  margin-left: 0px;
  margin-right: -2px;
}


scale.horizontal indicator {
  min-height: 3px;
  min-width: 1px;
}


scale.horizontal.fine-tune indicator {
  min-height: 2px;
}


scale.vertical indicator {
  min-height: 1px;
  min-width: 3px;
}


scale.vertical.fine-tune indicator {
  min-width: 2px;
}


scale infobar trough,
scale:hover trough,
scale:selected trough {
  background-color: rgba(0, 0, 0, 0.2);
}


scale infobar trough highlight,
scale:hover trough highlight,
scale:selected trough highlight {
  background-color: #f26f68;
}


scale infobar trough highlight:disabled,
scale:hover trough highlight:disabled,
scale:selected trough highlight:disabled {
  background-color: #f8b2ae;
}


scale infobar trough:disabled,
scale:hover trough:disabled,
scale:selected trough:disabled {
  background-color: rgba(0, 0, 0, 0.1);
}

progressbar {
  padding: 0;
  font-size: smaller;
  color: rgba(203, 191, 191, 0.7);
}

progressbar.osd {
  min-width: 3px;
  min-height: 3px;
  background-color: transparent;
}

progressbar.osd trough {
  border-style: none;
  background-color: transparent;
  box-shadow: none;
}

progressbar progress {
  background-color: #00C487;
  border: none;
  border-radius: 3px;
  box-shadow: none;
}

row:selected progressbar progress, infobar progressbar progress {
  background-color: #ffffff;
}

progressbar trough {
  border: none;
  border-radius: 3px;
  background-color: #151515;
}

row:selected progressbar trough, infobar progressbar trough {
  background-color: rgba(0, 0, 0, 0.2);
}

levelbar block {
  min-width: 1px;
  min-height: 1px;
}

levelbar.vertical block {
  min-width: 1px;
  min-height: 1px;
}

levelbar trough {
  border: none;
  padding: 3px;
  border-radius: 3px;
  background-color: #151515;
}

levelbar.horizontal.discrete block {
  margin: 0 1px;
}

levelbar.vertical.discrete block {
  margin: 1px 0;
}

levelbar block:not(.empty) {
  border: 1px solid {{ accent }};
  background-color: {{ accent }};
  border-radius: 2px;
}

levelbar block.low {
  border-color: #F27835;
  background-color: #F27835;
}

levelbar block.high {
  border-color: {{ accent }};
  background-color: {{ accent }};
}

levelbar block.full {
  border-color: #3498db;
  background-color: #3498db;
}

levelbar block.empty {
  background-color: #262626;
  border-color: #262626;
}

printdialog paper {
  border: 1px solid rgba(0, 0, 0, 0.25);
  background: #262626;
  padding: 0;
}

printdialog .dialog-action-box {
  margin: 12px;
}

frame > border,
.frame {
  margin: 0;
  padding: 0;
  border-radius: 0;
  border: 1px solid rgba(0, 0, 0, 0.25);
}

frame.flat > border,
frame > border.flat,
.frame.flat {
  border-style: none;
}

scrolledwindow viewport.frame {
  border-style: none;
}

scrolledwindow overshoot.top {
  background-image: -gtk-gradient(radial, center top, 0, center top, 0.6, from(rgba(240, 84, 76, 0.2)), to(rgba(240, 84, 76, 0)));
  background-size: 100% 60%;
  background-repeat: no-repeat;
  background-position: center top;
  background-color: transparent;
  border: none;
  box-shadow: none;
}

scrolledwindow overshoot.bottom {
  background-image: -gtk-gradient(radial, center bottom, 0, center bottom, 0.6, from(rgba(240, 84, 76, 0.2)), to(rgba(240, 84, 76, 0)));
  background-size: 100% 60%;
  background-repeat: no-repeat;
  background-position: center bottom;
  background-color: transparent;
  border: none;
  box-shadow: none;
}

scrolledwindow overshoot.left {
  background-image: -gtk-gradient(radial, left center, 0, left center, 0.6, from(rgba(240, 84, 76, 0.2)), to(rgba(240, 84, 76, 0)));
  background-size: 60% 100%;
  background-repeat: no-repeat;
  background-position: left center;
  background-color: transparent;
  border: none;
  box-shadow: none;
}

scrolledwindow overshoot.right {
  background-image: -gtk-gradient(radial, right center, 0, right center, 0.6, from(rgba(240, 84, 76, 0.2)), to(rgba(240, 84, 76, 0)));
  background-size: 60% 100%;
  background-repeat: no-repeat;
  background-position: right center;
  background-color: transparent;
  border: none;
  box-shadow: none;
}

scrolledwindow undershoot.top {
  background-color: transparent;
  background-image: linear-gradient(to left, rgba(255, 255, 255, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
  padding-top: 1px;
  background-size: 10px 1px;
  background-repeat: repeat-x;
  background-origin: content-box;
  background-position: center top;
  border: none;
}

scrolledwindow undershoot.bottom {
  background-color: transparent;
  background-image: linear-gradient(to left, rgba(255, 255, 255, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
  padding-bottom: 1px;
  background-size: 10px 1px;
  background-repeat: repeat-x;
  background-origin: content-box;
  background-position: center bottom;
  border: none;
}

scrolledwindow undershoot.left {
  background-color: transparent;
  background-image: linear-gradient(to top, rgba(255, 255, 255, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
  padding-left: 1px;
  background-size: 1px 10px;
  background-repeat: repeat-y;
  background-origin: content-box;
  background-position: left center;
  border: none;
}

scrolledwindow undershoot.right {
  background-color: transparent;
  background-image: linear-gradient(to top, rgba(255, 255, 255, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
  padding-right: 1px;
  background-size: 1px 10px;
  background-repeat: repeat-y;
  background-origin: content-box;
  background-position: right center;
  border: none;
}

scrolledwindow junction {
  border-color: transparent;
  border-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.25) 1px, transparent 1px) 0 0 0 1/0 1px stretch;
  background-color: #232323;
}

scrolledwindow junction:dir(rtl) {
  border-image-slice: 0 1 0 0;
}

separator {
  background-color: rgba(0, 0, 0, 0.1);
  min-width: 1px;
  min-height: 1px;
}

list {
  background-color: #262626;
  border-color: rgba(0, 0, 0, 0.25);
}

list row {
  padding: 2px;
}

treeview.has-open-popup.view.sidebar.source-list, .panel popover .sidebar .has-open-popup.view, .budgie-menu button.has-open-popup, .nemo-window .nemo-places-sidebar .has-open-popup.places-treeview, row.has-open-popup.activatable, treeview.has-open-popup.view, treeview.view.sidebar.source-list:hover, .panel popover .sidebar .view:hover, .budgie-menu button:hover, .nemo-window .nemo-places-sidebar .places-treeview:hover, row.activatable:hover, treeview.view:hover {
  background-color: rgba(255, 255, 255, 0.08);
}

treeview.view.sidebar.source-list:active, .panel popover .sidebar .view:active, .budgie-menu button:active, .nemo-window .nemo-places-sidebar .places-treeview:active, row.activatable:active, treeview.view:active {
  color: #cbbfbf;
}

treeview.view.sidebar.source-list:disabled, .panel popover .sidebar .view:disabled, .budgie-menu button:disabled, .nemo-window .nemo-places-sidebar .places-treeview:disabled, row.activatable:disabled, treeview.view:disabled {
  color: rgba(203, 191, 191, 0.45);
}

treeview.view.sidebar.source-list:disabled image, .panel popover .sidebar .view:disabled image, .budgie-menu button:disabled image, .nemo-window .nemo-places-sidebar .places-treeview:disabled image, row.activatable:disabled image, treeview.view:disabled image {
  color: inherit;
}

.panel popover .sidebar .view:selected:active, .budgie-menu button:selected:active, .nemo-window .nemo-places-sidebar .places-treeview:selected:active, row.activatable:selected:active, treeview.view:selected:active {
  color: #ffffff;
}

.panel popover .sidebar .view.has-open-popup:selected, .budgie-menu button.has-open-popup:selected, .nemo-window .nemo-places-sidebar .places-treeview.has-open-popup:selected, row.activatable.has-open-popup:selected, treeview.view.has-open-popup:selected, .panel popover .sidebar .view:selected:hover, .budgie-menu button:selected:hover, .nemo-window .nemo-places-sidebar .places-treeview:selected:hover, row.activatable:selected:hover, treeview.view:selected:hover {
  background-color: #d84c44;
}

row:not(:hover) {
  transition: all 150ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.app-notification {
  padding: 10px;
  color: #d0c8c8;
  background-color: alpha(rgba(41, 41, 41, 0.95),0.9);
  background-clip: border-box;
  border-radius: 0 0 2px 2px;
  border-width: 0 1px 1px 1px;
  border-style: solid;
  border-color: rgba(11, 11, 11, 0.42);
}

.app-notification border {
  border: none;
}

.app-notification button {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.42);
}

.app-notification button:hover {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(115, 115, 115, 0.52);
}

.app-notification button:active, .app-notification button:checked {
  color: #ffffff;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: {{ accent }};
  background-clip: padding-box;
}

.app-notification button:disabled {
  color: #5b5959;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.85);
}

.app-notification button.flat:disabled {
  border-color: transparent;
  background-color: transparent;
}

.app-notification .linked:not(.vertical) > entry + entry {
  border-left-color: rgba(0, 0, 0, 0.3);
}

.app-notification .linked:not(.vertical) > entry.error + entry,
.app-notification .linked:not(.vertical) > entry + entry.error {
  border-left-color: #FC4138;
}

.app-notification .linked:not(.vertical) > entry.warning + entry,
.app-notification .linked:not(.vertical) > entry + entry.warning {
  border-left-color: #F27835;
}

.app-notification .linked:not(.vertical) > entry.error + entry.warning,
.app-notification .linked:not(.vertical) > entry.warning + entry.error {
  border-left-color: #f75d37;
}

.app-notification .linked:not(.vertical) > entry + entry:focus:not(:last-child),
.app-notification .linked:not(.vertical) > entry + entry:focus:last-child {
  border-left-color: {{ accent }};
}

.app-notification .linked:not(.vertical) > entry:focus:not(:only-child) + entry,
.app-notification .linked:not(.vertical) > entry:focus:not(:only-child) + button,
.app-notification .linked:not(.vertical) > entry:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: {{ accent }};
}

.app-notification .linked:not(.vertical) > entry + entry:drop(active):not(:last-child),
.app-notification .linked:not(.vertical) > entry + entry:drop(active):last-child {
  border-left-color: #F08437;
}

.app-notification .linked:not(.vertical) > entry:drop(active):not(:only-child) + entry,
.app-notification .linked:not(.vertical) > entry:drop(active):not(:only-child) + button,
.app-notification .linked:not(.vertical) > entry:drop(active):not(:only-child) + combobox > box > button.combo {
  border-left-color: #F08437;
}

.app-notification .linked:not(.vertical) > entry + entry.warning:focus:not(:last-child),
.app-notification .linked:not(.vertical) > entry + entry.warning:focus:last-child {
  border-left-color: #F27835;
}

.app-notification .linked:not(.vertical) > entry.warning:focus:not(:only-child) + entry,
.app-notification .linked:not(.vertical) > entry.warning:focus:not(:only-child) + button,
.app-notification .linked:not(.vertical) > entry.warning:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: #F27835;
}

.app-notification .linked:not(.vertical) > entry + entry.error:focus:not(:last-child),
.app-notification .linked:not(.vertical) > entry + entry.error:focus:last-child {
  border-left-color: #FC4138;
}

.app-notification .linked:not(.vertical) > entry.error:focus:not(:only-child) + entry,
.app-notification .linked:not(.vertical) > entry.error:focus:not(:only-child) + button,
.app-notification .linked:not(.vertical) > entry.error:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: #FC4138;
}

.app-notification .linked:not(.vertical) > button:active + entry,
.app-notification .linked:not(.vertical) > button:checked + entry {
  border-left-color: {{ accent }};
}

.app-notification .linked:not(.vertical) > button + button {
  border-left-style: none;
}

.app-notification .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.app-notification .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action) {
  box-shadow: inset 1px 0 rgba(11, 11, 11, 0.42);
}

.app-notification .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.app-notification .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover) {
  box-shadow: inset 1px 0 rgba(11, 11, 11, 0.42);
}

.app-notification .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.app-notification .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.app-notification .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.app-notification .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.app-notification .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.app-notification .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:disabled,
.app-notification .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.app-notification .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:hover,
.app-notification .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.app-notification .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.app-notification .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.app-notification .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.app-notification .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.app-notification .linked:not(.vertical) {
  box-shadow: none;
}

expander arrow {
  min-width: 16px;
  min-height: 16px;
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
}

expander arrow:dir(rtl) {
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic-rtl");
}

expander arrow:hover {
  color: white;
}

expander arrow:checked {
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
}

calendar {
  color: #cbbfbf;
  border: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 0;
  padding: 2px;
}

calendar:selected {
  border-radius: 1.5px;
}

calendar.header {
  color: #cbbfbf;
  border: none;
}

calendar.button {
  color: rgba(203, 191, 191, 0.45);
}

calendar.button:hover {
  color: #cbbfbf;
}

calendar.button:disabled {
  color: rgba(203, 191, 191, 0.45);
}

calendar:indeterminate {
  color: alpha(currentColor,0.55);
}

calendar.highlight {
  color: #cbbfbf;
}

messagedialog.csd .titlebar {
  min-height: 20px;
  background-color: #222222;
  border: none;
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
}

messagedialog .dialog-action-area.linked:not(.vertical) > button {
  padding: 5px 10px;
  border-radius: 0;
  border: none;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

messagedialog .dialog-action-area.linked:not(.vertical) > button:active, messagedialog .dialog-action-area.linked:not(.vertical) > button:checked {
  transition: background-color 0.00001s 0.2s;
  animation: ripple_effect 0.2s cubic-bezier(0, 0, 0.2, 1);
}

messagedialog .dialog-action-area.linked:not(.vertical) > button, messagedialog .dialog-action-area.linked:not(.vertical) > button:hover, messagedialog .dialog-action-area.linked:not(.vertical) > button:active, messagedialog .dialog-action-area.linked:not(.vertical) > button:checked, messagedialog .dialog-action-area.linked:not(.vertical) > button:disabled {
  border-radius: 0;
}

messagedialog .dialog-action-area.linked:not(.vertical) > button:first-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:hover:first-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:active:first-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:checked:first-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:disabled:first-child {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}

messagedialog .dialog-action-area.linked:not(.vertical) > button:last-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:hover:last-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:active:last-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:checked:last-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:disabled:last-child {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}

messagedialog .dialog-action-area.linked:not(.vertical) > button:only-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:hover:only-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:active:only-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:checked:only-child, messagedialog .dialog-action-area.linked:not(.vertical) > button:disabled:only-child {
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
}

messagedialog .dialog-action-area.linked:not(.vertical) > button:not(.suggested-action):not(.destructive-action):hover {
  background-color: alpha(#cbbfbf,0.06);
}

messagedialog .dialog-action-area.linked:not(.vertical) > button:not(.suggested-action):not(.destructive-action):active, messagedialog .dialog-action-area.linked:not(.vertical) > button:not(.suggested-action):not(.destructive-action):checked {
  background-color: alpha(#cbbfbf,0.1);
  color: #cbbfbf;
}

messagedialog.csd.background {
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  border: none;
}

messagedialog.csd .dialog-action-area.linked:not(.vertical) > button {
  padding: 6px 10px 8px 10px;
}

messagedialog.csd .dialog-action-area.linked:not(.vertical) > button, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:hover, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:active, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:checked, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:disabled {
  border-radius: 0;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  border-right: none;
  border-bottom: none;
}

messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:first-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:hover:first-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:active:first-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:checked:first-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:disabled:first-child {
  border-bottom-left-radius: 3px;
  border-top-left-radius: 0;
  border-left: none;
  border-bottom: none;
}

messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:last-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:hover:last-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:active:last-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:checked:last-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:disabled:last-child {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 0;
  border-right: none;
  border-bottom: none;
}

messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:only-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:hover:only-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:active:only-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:checked:only-child, messagedialog.csd .dialog-action-area.linked:not(.vertical) > button:disabled:only-child {
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  border-left: none;
  border-right: none;
  border-bottom: none;
}

filechooser #pathbarbox {
  border-bottom: 1px solid rgba(0, 0, 0, 0.08);
}

filechooserbutton:drop(active) {
  box-shadow: none;
  border-color: transparent;
}

.sidebar {
  border-style: none;
  background-color: #222222;
}

stacksidebar.sidebar:dir(ltr) list, stacksidebar.sidebar.left list, stacksidebar.sidebar.left:dir(rtl) list, .sidebar:dir(ltr), .sidebar.left {
  border-right: 1px solid #1a1a1a;
  border-left-style: none;
}

stacksidebar.sidebar:dir(rtl) list, stacksidebar.sidebar.right list, .sidebar:dir(rtl), .sidebar.right {
  border-left: 1px solid #1a1a1a;
  border-right-style: none;
}

.sidebar list {
  background-color: transparent;
}

paned .sidebar.left, paned .sidebar.right, paned .sidebar.left:dir(rtl), paned .sidebar:dir(rtl), paned .sidebar:dir(ltr), paned .sidebar {
  border-style: none;
}

stacksidebar row {
  padding: 4px 4px;
}

stacksidebar row > label {
  padding-left: 6px;
  padding-right: 6px;
}

stacksidebar row.needs-attention > label {
  background-size: 6px 6px, 0 0;
}

placessidebar row button.sidebar-button {
  min-width: 22px;
  min-height: 22px;
  margin-top: 2px;
  margin-bottom: 2px;
  padding: 0;
  border-radius: 100%;
  -gtk-outline-radius: 100%;
}

placessidebar row button.sidebar-button:not(:hover):not(:active) > image {
  opacity: 0.5;
}

placessidebar > viewport.frame {
  border-style: none;
}

placessidebar row {
  min-height: 28px;
  padding: 2px 2px 2px 10px;
}

placessidebar row > revealer {
  padding: 0 10px;
}

placessidebar row image.sidebar-icon:dir(ltr) {
  padding-right: 8px;
}

placessidebar row image.sidebar-icon:dir(rtl) {
  padding-left: 8px;
}

placessidebar row label.sidebar-label:dir(ltr) {
  padding-right: 2px;
}

placessidebar row label.sidebar-label:dir(rtl) {
  padding-left: 2px;
}

placessidebar row.sidebar-placeholder-row {
  padding: 0 8px;
  min-height: 2px;
  background-image: linear-gradient(to bottom, #F08437, #F08437);
  background-clip: content-box;
}

placessidebar row.sidebar-new-bookmark-row {
  color: {{ accent }};
}

placessidebar row:drop(active):not(:disabled) {
  box-shadow: inset 0 1px #F08437, inset 0 -1px #F08437;
}

placessidebar row:drop(active):not(:disabled), placessidebar row:drop(active):not(:disabled) label, placessidebar row:drop(active):not(:disabled) image {
  color: #F08437;
}

placessidebar row:drop(active):not(:disabled):selected {
  background-color: #F08437;
}

placessidebar row:drop(active):not(:disabled):selected, placessidebar row:drop(active):not(:disabled):selected label, placessidebar row:drop(active):not(:disabled):selected image {
  color: #ffffff;
}

placesview .server-list-button > image {
  -gtk-icon-transform: rotate(0turn);
}

placesview .server-list-button:checked > image {
  transition: 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  -gtk-icon-transform: rotate(-0.5turn);
}

placesview > actionbar > revealer > box > label {
  padding-left: 8px;
  padding-right: 8px;
}

paned > separator {
  min-width: 1px;
  min-height: 1px;
  -gtk-icon-source: none;
  border-style: none;
  background-color: transparent;
  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25));
  background-size: 1px 1px;
}

paned > separator:selected {
  background-image: linear-gradient(to bottom, {{ accent }}, {{ accent }});
}

paned > separator.wide {
  min-width: 5px;
  min-height: 5px;
  background-color: #222222;
  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25)), linear-gradient(to bottom, rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25));
  background-size: 1px 1px, 1px 1px;
}

paned.horizontal > separator {
  background-repeat: repeat-y;
}

paned.horizontal > separator:dir(ltr) {
  margin: 0 -8px 0 0;
  padding: 0 8px 0 0;
  background-position: left;
}

paned.horizontal > separator:dir(rtl) {
  margin: 0 0 0 -8px;
  padding: 0 0 0 8px;
  background-position: right;
}

paned.horizontal > separator.wide {
  margin: 0;
  padding: 0;
  background-repeat: repeat-y, repeat-y;
  background-position: left, right;
}

paned.vertical > separator {
  margin: 0 0 -8px 0;
  padding: 0 0 8px 0;
  background-repeat: repeat-x;
  background-position: top;
}

paned.vertical > separator.wide {
  margin: 0;
  padding: 0;
  background-repeat: repeat-x, repeat-x;
  background-position: bottom, top;
}

infobar {
  border-style: none;
}

infobar.info, infobar.question, infobar.warning, infobar.error {
  background-color: {{ accent }};
  color: #ffffff;
  caret-color: currentColor;
}

infobar.info selection, infobar.question selection, infobar.warning selection, infobar.error selection {
  color: {{ accent }};
  background-color: #ffffff;
}

.raven-mpris button.image-button, .nemo-window .floating-bar button, .nautilus-window .floating-bar button, row:selected button, infobar.info button, infobar.question button, infobar.warning button, infobar.error button {
  color: #ffffff;
  background-color: rgba(255, 255, 255, 0);
  border-color: rgba(255, 255, 255, 0.5);
}

.raven-mpris button.flat.image-button, .nemo-window .floating-bar button.flat, .nautilus-window .floating-bar button.flat, row:selected button.flat, infobar.info button.flat, infobar.question button.flat, infobar.warning button.flat, infobar.error button.flat {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  color: #ffffff;
  background-color: rgba(255, 255, 255, 0);
}

.raven-mpris button.flat.image-button:disabled, .nemo-window .floating-bar button.flat:disabled, .nautilus-window .floating-bar button.flat:disabled, row:selected button.flat:disabled, infobar.info button.flat:disabled, infobar.question button.flat:disabled, infobar.warning button.flat:disabled, infobar.error button.flat:disabled {
  color: rgba(255, 255, 255, 0.42);
}

.raven-mpris button.flat.image-button:disabled label, .nemo-window .floating-bar button.flat:disabled label, .nautilus-window .floating-bar button.flat:disabled label, row:selected button.flat:disabled label, infobar.info button.flat:disabled label, infobar.question button.flat:disabled label, infobar.warning button.flat:disabled label, infobar.error button.flat:disabled label {
  color: rgba(255, 255, 255, 0.42);
}

.raven-mpris button.image-button:hover, .nemo-window .floating-bar button:hover, .nautilus-window .floating-bar button:hover, row:selected button:hover, infobar.info button:hover, infobar.question button:hover, infobar.warning button:hover, infobar.error button:hover {
  color: #ffffff;
  background-color: rgba(255, 255, 255, 0.2);
  border-color: rgba(255, 255, 255, 0.8);
}

.raven-mpris button.image-button:active, .nemo-window .floating-bar button:active, .nautilus-window .floating-bar button:active, row:selected button:active, infobar.info button:active, infobar.question button:active, infobar.warning button:active, infobar.error button:active, .raven-mpris button.image-button:checked, .nemo-window .floating-bar button:checked, .nautilus-window .floating-bar button:checked, row:selected button:checked, infobar.info button:checked, infobar.question button:checked, infobar.warning button:checked, infobar.error button:checked {
  color: {{ accent }};
  background-color: #ffffff;
  border-color: #ffffff;
}

.raven-mpris button.image-button:disabled, .nemo-window .floating-bar button:disabled, .nautilus-window .floating-bar button:disabled, row:selected button:disabled, infobar.info button:disabled, infobar.question button:disabled, infobar.warning button:disabled, infobar.error button:disabled {
  color: rgba(255, 255, 255, 0.5);
  background-color: rgba(255, 255, 255, 0);
  border-color: rgba(255, 255, 255, 0.42);
}

.raven-mpris button.image-button:disabled label, .nemo-window .floating-bar button:disabled label, .nautilus-window .floating-bar button:disabled label, row:selected button:disabled label, infobar.info button:disabled label, infobar.question button:disabled label, infobar.warning button:disabled label, infobar.error button:disabled label {
  color: rgba(255, 255, 255, 0.5);
}

.raven-mpris button.image-button:disabled:active, .nemo-window .floating-bar button:disabled:active, .nautilus-window .floating-bar button:disabled:active, row:selected button:disabled:active, infobar.info button:disabled:active, infobar.question button:disabled:active, infobar.warning button:disabled:active, infobar.error button:disabled:active, .raven-mpris button.image-button:disabled:checked, .nemo-window .floating-bar button:disabled:checked, .nautilus-window .floating-bar button:disabled:checked, row:selected button:disabled:checked, infobar.info button:disabled:checked, infobar.question button:disabled:checked, infobar.warning button:disabled:checked, infobar.error button:disabled:checked {
  color: {{ accent }};
  background-color: rgba(255, 255, 255, 0.5);
  border-color: rgba(255, 255, 255, 0.42);
}

tooltip {
  border-radius: 2px;
  box-shadow: none;
}

tooltip.background {
  background-color: rgba(41, 41, 41, 0.95);
  background-clip: padding-box;
}

tooltip.background label {
  padding: 4px;
}

tooltip decoration {
  background-color: transparent;
}

tooltip * {
  background-color: transparent;
  color: #d0c8c8;
}

colorswatch, colorswatch:drop(active) {
  border-style: none;
}

colorswatch.top {
  border-top-left-radius: 2.5px;
  border-top-right-radius: 2.5px;
}

colorswatch.top overlay {
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
}

colorswatch.bottom {
  border-bottom-left-radius: 2.5px;
  border-bottom-right-radius: 2.5px;
}

colorswatch.bottom overlay {
  border-bottom-left-radius: 2px;
  border-bottom-right-radius: 2px;
}

colorswatch.left, colorswatch:first-child:not(.top) {
  border-top-left-radius: 2.5px;
  border-bottom-left-radius: 2.5px;
}

colorswatch.left overlay, colorswatch:first-child:not(.top) overlay {
  border-top-left-radius: 2px;
  border-bottom-left-radius: 2px;
}

colorswatch.right, colorswatch:last-child:not(.bottom) {
  border-top-right-radius: 2.5px;
  border-bottom-right-radius: 2.5px;
}

colorswatch.right overlay, colorswatch:last-child:not(.bottom) overlay {
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
}

colorswatch.dark overlay {
  color: rgba(255, 255, 255, 0.37);
}

colorswatch.dark overlay:hover {
  border-color: rgba(0, 0, 0, 0.25);
}

colorswatch.light overlay {
  color: rgba(0, 0, 0, 0.7);
}

colorswatch.light overlay:hover {
  border-color: rgba(0, 0, 0, 0.25);
}

colorswatch overlay {
  border: 1px solid rgba(0, 0, 0, 0.25);
}

colorswatch overlay:hover {
  background-color: rgba(255, 255, 255, 0.2);
}

colorswatch:disabled {
  opacity: 0.5;
}

colorswatch:disabled overlay {
  border-color: rgba(0, 0, 0, 0.6);
  box-shadow: none;
}

colorswatch#add-color-button {
  border-style: solid;
  border-width: 1px;
  color: #cbbfbf;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #2b2b2b;
}

colorswatch#add-color-button:hover {
  color: #a99595;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #404040;
}

colorswatch#add-color-button overlay {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
}

button.color {
  padding: 0;
}

button.color colorswatch:first-child:last-child, button.color colorswatch:first-child:last-child overlay {
  margin: 4px;
  border-radius: 0;
}

colorchooser .popover.osd {
  border-radius: 3px;
}

.content-view {
  background-color: #262626;
}

.content-view:hover {
  -gtk-icon-effect: highlight;
}

.scale-popup button:hover {
  color: #a99595;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #404040;
}

.context-menu, popover.touch-selection, .csd popover.touch-selection,
popover.background.touch-selection, .csd popover.background.touch-selection {
  font: initial;
}

.monospace {
  font-family: Monospace;
}

.slate-notification-window button.image-button,
.budgie-notification-window button.image-button,
.budgie-switcher-window button.image-button,
.budgie-osd-window button.image-button, box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable list > row.activatable button.image-button, box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable button.image-button, button.nautilus-circular-button.image-button,
button.circular,
button.circular-button {
  padding: 0;
  min-width: 16px;
  min-height: 24px;
  padding: 2px 6px;
  border-radius: 50%;
  -gtk-outline-radius: 50%;
}

.slate-notification-window button.image-button label,
.budgie-notification-window button.image-button label,
.budgie-switcher-window button.image-button label,
.budgie-osd-window button.image-button label, box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable list > row.activatable button.image-button label, box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable button.image-button label, button.nautilus-circular-button.image-button label,
button.circular label,
button.circular-button label {
  padding: 0;
}

.keycap {
  min-width: 16px;
  min-height: 20px;
  padding: 3px 6px 4px 6px;
  color: #cbbfbf;
  background-color: #262626;
  border: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 2.5px;
  box-shadow: inset 0px -2px 0px rgba(0, 0, 0, 0.15);
}

stackswitcher button.text-button {
  min-width: 80px;
}

stackswitcher button.circular {
  min-width: 0;
}

*:drop(active):focus,
*:drop(active) {
  box-shadow: inset 0 0 0 1px #F08437;
}

decoration {
  border-radius: 2px 2px 0 0;
  border-width: 0;
  box-shadow: 0 3px 5px 0 rgba(0, 0, 0, 0.25), 0 8px 8px 0 rgba(0, 0, 0, 0.25), 0 0 0 1px rgba(0, 0, 0, 0.25);
  margin: 6px;
}

decoration:backdrop {
  box-shadow: 0 3px 5px 0 transparent, 0 8px 8px 0 transparent, 0 3px 3px 0 rgba(0, 0, 0, 0.23), 0 0 0 1px rgba(0, 0, 0, 0.25);
  transition: 200ms ease-out;
}

.fullscreen decoration, .tiled decoration {
  border-radius: 0;
  box-shadow: 0 3px 3px 0 rgba(0, 0, 0, 0.23);
}

.ssd decoration {
  border-radius: 3px 3px 0 0;
  box-shadow: 0 3px 5px 0 rgba(0, 0, 0, 0.3);
}

.ssd decoration.maximized {
  border-radius: 0;
}

.csd.popup decoration {
  border-radius: 2px;
  box-shadow: 0 3px 6px black, 0 0 0 1px rgba(0, 0, 0, 0.25);
}

tooltip.csd decoration {
  border-radius: 2px;
  box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.9);
}

messagedialog.csd decoration {
  border-radius: 3px;
}

.solid-csd decoration {
  border: 1px solid #1a1a1a;
  border-radius: 0;
  margin: 0;
  background-color: #1a1a1a;
  box-shadow: none;
}

headerbar button.titlebutton,
.titlebar button.titlebutton {
  margin: 0;
  padding: 0;
  min-width: 28px;
  min-height: 28px;
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  background-color: rgba(26, 26, 26, 0);
}

headerbar button.titlebutton:hover,
.titlebar button.titlebutton:hover {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: rgba(208, 200, 200, 0.18);
}

headerbar button.titlebutton:active, headerbar button.titlebutton:checked,
.titlebar button.titlebutton:active,
.titlebar button.titlebutton:checked {
  color: #ffffff;
  border-color: transparent;
  background-color: {{ accent }};
}

headerbar button.titlebutton.close, headerbar button.titlebutton.maximize, headerbar button.titlebutton.minimize, headerbar button.titlebutton.restore,
.titlebar button.titlebutton.close,
.titlebar button.titlebutton.maximize,
.titlebar button.titlebutton.minimize,
.titlebar button.titlebutton.restore {
  min-width: 30px;
  min-height: 28px;
  color: transparent;
  background-color: transparent;
  background-position: center;
  background-repeat: no-repeat;
  border-width: 0;
}

headerbar button.titlebutton.close:backdrop, headerbar button.titlebutton.maximize:backdrop, headerbar button.titlebutton.minimize:backdrop, headerbar button.titlebutton.restore:backdrop,
.titlebar button.titlebutton.close:backdrop,
.titlebar button.titlebutton.maximize:backdrop,
.titlebar button.titlebutton.minimize:backdrop,
.titlebar button.titlebutton.restore:backdrop {
  opacity: 1;
}

headerbar button.titlebutton.close,
.titlebar button.titlebutton.close {
  background-image: -gtk-scaled(url("assets/titlebutton-close-dark.png"), url("assets/titlebutton-close-dark@2.png"));
}

headerbar button.titlebutton.close:backdrop,
.titlebar button.titlebutton.close:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-close-backdrop-dark.png"), url("assets/titlebutton-close-backdrop-dark@2.png"));
}

headerbar button.titlebutton.close:hover,
.titlebar button.titlebutton.close:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-close-hover-dark.png"), url("assets/titlebutton-close-hover-dark@2.png"));
}

headerbar button.titlebutton.close:active,
.titlebar button.titlebutton.close:active {
  background-image: -gtk-scaled(url("assets/titlebutton-close-active-dark.png"), url("assets/titlebutton-close-active-dark@2.png"));
}

headerbar button.titlebutton.maximize,
.titlebar button.titlebutton.maximize {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-dark.png"), url("assets/titlebutton-maximize-dark@2.png"));
}

headerbar button.titlebutton.maximize:backdrop,
.titlebar button.titlebutton.maximize:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-backdrop-dark.png"), url("assets/titlebutton-maximize-backdrop-dark@2.png"));
}

headerbar button.titlebutton.maximize:hover,
.titlebar button.titlebutton.maximize:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-hover-dark.png"), url("assets/titlebutton-maximize-hover-dark@2.png"));
}

headerbar button.titlebutton.maximize:active,
.titlebar button.titlebutton.maximize:active {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-active-dark.png"), url("assets/titlebutton-maximize-active-dark@2.png"));
}

headerbar button.titlebutton.minimize,
.titlebar button.titlebutton.minimize {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-dark.png"), url("assets/titlebutton-minimize-dark@2.png"));
}

headerbar button.titlebutton.minimize:backdrop,
.titlebar button.titlebutton.minimize:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-backdrop-dark.png"), url("assets/titlebutton-minimize-backdrop-dark@2.png"));
}

headerbar button.titlebutton.minimize:hover,
.titlebar button.titlebutton.minimize:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-hover-dark.png"), url("assets/titlebutton-minimize-hover-dark@2.png"));
}

headerbar button.titlebutton.minimize:active,
.titlebar button.titlebutton.minimize:active {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-active-dark.png"), url("assets/titlebutton-minimize-active-dark@2.png"));
}

headerbar button.titlebutton.restore,
.titlebar button.titlebutton.restore {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-dark.png"), url("assets/titlebutton-restore-dark@2.png"));
}

headerbar button.titlebutton.restore:backdrop,
.titlebar button.titlebutton.restore:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-backdrop-dark.png"), url("assets/titlebutton-restore-backdrop-dark@2.png"));
}

headerbar button.titlebutton.restore:hover,
.titlebar button.titlebutton.restore:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-hover-dark.png"), url("assets/titlebutton-restore-hover-dark@2.png"));
}

headerbar button.titlebutton.restore:active,
.titlebar button.titlebutton.restore:active {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-active-dark.png"), url("assets/titlebutton-restore-active-dark@2.png"));
}

.fullscreen headerbar button.titlebutton.maximize, .maximized headerbar button.titlebutton.maximize, .fullscreen .titlebar button.titlebutton.maximize, .maximized .titlebar button.titlebutton.maximize {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-dark.png"), url("assets/titlebutton-restore-dark@2.png"));
}

.fullscreen headerbar button.titlebutton.maximize:backdrop, .maximized headerbar button.titlebutton.maximize:backdrop, .fullscreen .titlebar button.titlebutton.maximize:backdrop, .maximized .titlebar button.titlebutton.maximize:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-backdrop-dark.png"), url("assets/titlebutton-restore-backdrop-dark@2.png"));
}

.fullscreen headerbar button.titlebutton.maximize:hover, .maximized headerbar button.titlebutton.maximize:hover, .fullscreen .titlebar button.titlebutton.maximize:hover, .maximized .titlebar button.titlebutton.maximize:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-hover-dark.png"), url("assets/titlebutton-restore-hover-dark@2.png"));
}

.fullscreen headerbar button.titlebutton.maximize:active, .maximized headerbar button.titlebutton.maximize:active, .fullscreen .titlebar button.titlebutton.maximize:active, .maximized .titlebar button.titlebutton.maximize:active {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-active-dark.png"), url("assets/titlebutton-restore-active-dark@2.png"));
}

filechooser placessidebar.sidebar row.sidebar-row.has-open-popup:selected, filechooser placessidebar.sidebar row.sidebar-row:selected, filechooser placessidebar.sidebar row.sidebar-row:selected:hover, filechooser placessidebar.sidebar row.sidebar-row:active:hover,
.nautilus-window placessidebar.sidebar row.sidebar-row.has-open-popup:selected,
.nautilus-window placessidebar.sidebar row.sidebar-row:selected,
.nautilus-window placessidebar.sidebar row.sidebar-row:selected:hover,
.nautilus-window placessidebar.sidebar row.sidebar-row:active:hover, window.thunar .sidebar treeview.view:selected, window.thunar .sidebar treeview.view:selected:hover, window.thunar .sidebar treeview.view:active:hover, .budgie-menu button:checked, .atril-window scrolledwindow.frame > .view:selected, .atril-window scrolledwindow.frame > .view:active,
.xreader-window scrolledwindow.frame > .view:selected,
.xreader-window scrolledwindow.frame > .view:active, .caja-desktop > widget.entry:selected, .caja-desktop > widget.entry:focus:selected, #MozillaGtkWidget.background > widget > scrolledwindow > textview text:selected, #MozillaGtkWidget.background > widget > scrolledwindow > textview text:selected:focus,
#MozillaGtkWidget.background > widget > scrolledwindow > textview text selection, .nemo-window .nemo-window-pane widget.entry:selected:focus, .nemo-window .nemo-window-pane widget.entry:selected, .nemo-window .nemo-places-sidebar .places-treeview:selected, .nemo-window .nemo-places-sidebar .places-treeview:selected:hover, .emoji widget:hover, .view:selected, .geary-sidebar-pane-separator frame.geary-folder-frame treeview.view.sidebar:selected, .view:selected:focus, textview text selection:focus, textview text selection, iconview:selected, iconview:selected:focus, flowbox flowboxchild:selected, entry selection:focus, entry selection, menuitem.button.flat:active, menuitem.button.flat:active arrow, menuitem.button.flat:selected, menuitem.button.flat:selected arrow,
modelbutton.flat:active,
modelbutton.flat:active arrow,
modelbutton.flat:selected,
modelbutton.flat:selected arrow, treeview.view:selected, treeview.view:selected:focus, row:selected, calendar:selected {
  background-color: {{ accent }};
  color: #ffffff;
}

filechooser placessidebar.sidebar row.sidebar-row:disabled:selected, filechooser placessidebar.sidebar row.sidebar-row:disabled:active:hover,
.nautilus-window placessidebar.sidebar row.sidebar-row:disabled:selected,
.nautilus-window placessidebar.sidebar row.sidebar-row:disabled:active:hover, window.thunar .sidebar treeview.view:disabled:selected, window.thunar .sidebar treeview.view:disabled:active:hover, .budgie-menu button:disabled:checked, .atril-window scrolledwindow.frame > .view:disabled:selected, .atril-window scrolledwindow.frame > .view:disabled:active,
.xreader-window scrolledwindow.frame > .view:disabled:selected,
.xreader-window scrolledwindow.frame > .view:disabled:active, .caja-desktop > widget.entry:disabled:selected, #MozillaGtkWidget.background > widget > scrolledwindow > textview text:disabled:selected,
#MozillaGtkWidget.background > widget > scrolledwindow > textview text selection:disabled, .nemo-window .nemo-window-pane widget.entry:disabled:selected, .nemo-window .nemo-places-sidebar .places-treeview:disabled:selected, .emoji widget:disabled:hover, .view:disabled:selected, .geary-sidebar-pane-separator frame.geary-folder-frame treeview.view.sidebar:disabled:selected, textview text selection:disabled, iconview:disabled:selected, iconview:disabled:selected:focus, flowbox flowboxchild:disabled:selected, entry selection:disabled, menuitem.button.flat:disabled:active, menuitem.button.flat:active arrow:disabled, menuitem.button.flat:disabled:selected, menuitem.button.flat:selected arrow:disabled,
modelbutton.flat:disabled:active,
modelbutton.flat:active arrow:disabled,
modelbutton.flat:disabled:selected,
modelbutton.flat:selected arrow:disabled, row:disabled:selected, calendar:disabled:selected {
  color: #f8aaa6;
}

row:selected label, label:selected {
  color: #ffffff;
}

row:selected label:disabled, label:disabled:selected {
  color: #f8aaa6;
}

/*********
 * Emoji *
 *********/
popover.emoji-picker {
  padding: 0;
}

popover.emoji-picker entry {
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
  box-shadow: none;
  border-width: 0 0 1px 0;
  padding: 4px 12px;
}

popover.emoji-picker scrolledwindow {
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

button.emoji-section {
  margin-top: -1px;
  padding: 4px 12px;
  border-radius: 0;
  outline-offset: -4px;
  box-shadow: none;
  border: none;
  transition-duration: 0ms;
}

button.emoji-section:first-child {
  border-radius: 0 0 0 2px;
}

button.emoji-section:last-child {
  border-radius: 0 0 2px 0;
}

.emoji {
  min-width: 3em;
  min-height: 3em;
  padding: 0;
  font-size: large;
}

.emoji widget {
  border-radius: 3px;
  transition: all 0.1s cubic-bezier(0, 0, 0.2, 1);
}

terminal-window notebook > header.top button,
.mate-terminal notebook > header.top button {
  padding: 0;
  min-width: 24px;
  min-height: 24px;
}

terminal-window notebook scrollbar,
.mate-terminal notebook scrollbar {
  background: none;
}

window.thunar toolbar#location-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button, window.thunar #location-toolbar.inline-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button, .nemo-window .primary-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button,
.nemo-window .primary-toolbar widget.linked.raised:not(.vertical):not(.path-bar) button, .nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.text-button,
.nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.image-button.text-button, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle,
.nautilus-window headerbar .path-bar-box .path-bar button.flat.image-button.text-button.toggle {
  background-color: transparent;
  background-image: none;
  color: #d0c8c8;
  border-radius: 0;
  box-shadow: none;
  border: none;
  margin: 0 0 0 0;
  border-image: radial-gradient(circle closest-corner at center calc(100% - 1px), {{ accent }} 0%, transparent 0%) 0 0 0/0 0 0;
}

window.thunar toolbar#location-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:hover, window.thunar #location-toolbar.inline-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:hover, .nemo-window .primary-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:hover,
.nemo-window .primary-toolbar widget.linked.raised:not(.vertical):not(.path-bar) button:hover, .nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.text-button:hover, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:hover {
  background-color: transparent;
  box-shadow: inset 0 -2px rgba(240, 84, 76, 0.5);
}

window.thunar toolbar#location-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:checked, window.thunar #location-toolbar.inline-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:checked, .nemo-window .primary-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:checked,
.nemo-window .primary-toolbar widget.linked.raised:not(.vertical):not(.path-bar) button:checked, .nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.text-button:checked, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:checked, window.thunar toolbar#location-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:active, window.thunar #location-toolbar.inline-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:active, .nemo-window .primary-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:active,
.nemo-window .primary-toolbar widget.linked.raised:not(.vertical):not(.path-bar) button:active, .nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.text-button:active, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:active {
  color: #d0c8c8;
  background-color: transparent;
  border-image: radial-gradient(circle closest-corner at center calc(100% - 1px), {{ accent }} 100%, transparent 0%) 0 0 2/0 0 2px;
}

window.thunar toolbar#location-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:disabled, window.thunar #location-toolbar.inline-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:disabled, .nemo-window .primary-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:disabled,
.nemo-window .primary-toolbar widget.linked.raised:not(.vertical):not(.path-bar) button:disabled, .nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.text-button:disabled, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:disabled {
  color: rgba(208, 200, 200, 0.4);
  background-color: transparent;
}

window.thunar toolbar#location-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:checked:disabled, window.thunar #location-toolbar.inline-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:checked:disabled, .nemo-window .primary-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button:checked:disabled,
.nemo-window .primary-toolbar widget.linked.raised:not(.vertical):not(.path-bar) button:checked:disabled, .nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.text-button:checked:disabled, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:checked:disabled {
  color: rgba(208, 200, 200, 0.4);
  background-color: transparent;
  border-image: radial-gradient(circle closest-corner at center calc(100% - 1px), rgba(240, 84, 76, 0.4) 100%, transparent 0%) 0 0 2/0 0 2px;
}

.nautilus-window headerbar .path-bar-box {
  margin: 6px 0 4px 0;
  border-radius: 3px;
  color: #d0c8c8;
  background-color: transparent;
}

.nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:hover, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:checked, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:active, .nautilus-window headerbar .path-bar-box .path-bar button.flat.text-button.toggle:disabled,
.nautilus-window headerbar .path-bar-box .path-bar button.flat.image-button.text-button.toggle,
.nautilus-window headerbar .path-bar-box .path-bar button.flat.image-button.text-button.toggle:hover,
.nautilus-window headerbar .path-bar-box .path-bar button.flat.image-button.text-button.toggle:checked,
.nautilus-window headerbar .path-bar-box .path-bar button.flat.image-button.text-button.toggle:active,
.nautilus-window headerbar .path-bar-box .path-bar button.flat.image-button.text-button.toggle:disabled {
  margin-top: 0;
  margin-bottom: 0;
  padding: 0 6px 4px 6px;
  min-height: 24px;
  border-radius: 0;
}

.nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.text-button:not(:only-child):last-child,
.nautilus-window headerbar .path-bar-box .linked.nautilus-path-bar button.image-button.text-button:not(:only-child):last-child {
  border-image: radial-gradient(circle closest-corner at center calc(100% - 1px), {{ accent }} 100%, transparent 0%) 0 0 2/0 0 2px;
}

.nautilus-window headerbar .path-bar-box.width-maximized {
  border: 1px solid rgba(0, 0, 0, 0.25);
  background-color: rgba(208, 200, 200, 0.06);
}

.nautilus-window headerbar .path-bar-box.background.frame {
  border: none;
  background-color: transparent;
}

.nautilus-canvas-item, .caja-canvas-item {
  border-radius: 2px;
}

.caja-desktop.caja-canvas-item, .caja-desktop, .nemo-desktop.nemo-canvas-item,
.nautilus-desktop.nautilus-canvas-item,
.nautilus-desktop.caja-canvas-item {
  color: #ffffff;
  text-shadow: 1px 1px rgba(0, 0, 0, 0.6);
}

.caja-desktop:active, .nemo-desktop.nemo-canvas-item:active,
.nautilus-desktop.nautilus-canvas-item:active,
.nautilus-desktop.caja-canvas-item:active {
  color: #cbbfbf;
}

.caja-desktop:selected, .nemo-desktop.nemo-canvas-item:selected,
.nautilus-desktop.nautilus-canvas-item:selected,
.nautilus-desktop.caja-canvas-item:selected {
  color: #ffffff;
  text-shadow: none;
}

.nautilus-canvas-item.dim-label, .slate-notification .nautilus-canvas-item.notification-body,
.budgie-notification .nautilus-canvas-item.notification-body,
.budgie-switcher .nautilus-canvas-item.notification-body, .dim-label.caja-canvas-item, .slate-notification .caja-canvas-item.notification-body,
.budgie-notification .caja-canvas-item.notification-body,
.budgie-switcher .caja-canvas-item.notification-body, label.nautilus-canvas-item.separator, label.separator.caja-canvas-item, headerbar .nautilus-canvas-item.subtitle, headerbar .subtitle.caja-canvas-item,
.nautilus-list-dim-label,
.caja-list-dim-label {
  color: #777171;
}

.nautilus-canvas-item.dim-label:selected, .slate-notification .nautilus-canvas-item.notification-body:selected,
.budgie-notification .nautilus-canvas-item.notification-body:selected,
.budgie-switcher .nautilus-canvas-item.notification-body:selected, .dim-label.caja-canvas-item:selected, .slate-notification .caja-canvas-item.notification-body:selected,
.budgie-notification .caja-canvas-item.notification-body:selected,
.budgie-switcher .caja-canvas-item.notification-body:selected, label.nautilus-canvas-item.separator:selected, label.separator.caja-canvas-item:selected, headerbar .nautilus-canvas-item.subtitle:selected, headerbar .subtitle.caja-canvas-item:selected, .nautilus-canvas-item.dim-label:selected:focus,
.nautilus-list-dim-label:selected,
.caja-list-dim-label:selected,
.nautilus-list-dim-label:selected:focus {
  color: #fcdddb;
}

.nautilus-window searchbar {
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

.nautilus-window .searchbar-container {
  margin-top: -1px;
}

.nautilus-window notebook,
.nautilus-window notebook > stack:not(:only-child) searchbar {
  background-color: #262626;
}

.disk-space-display {
  border-style: solid;
  border-width: 1px;
}

.disk-space-display.unknown {
  background-color: rgba(203, 191, 191, 0.5);
  border-color: rgba(180, 163, 163, 0.5);
}

.disk-space-display.used {
  background-color: rgba(240, 84, 76, 0.8);
  border-color: rgba(236, 39, 29, 0.8);
}

.disk-space-display.free {
  background-color: #1a1a1a;
  border-color: #010101;
}

@keyframes needs_attention_keyframes {
  0% {
    color: #d0c8c8;
    border-color: rgba(0, 0, 0, 0.25);
    background-color: rgba(208, 200, 200, 0.18);
  }
  100% {
    color: #ffffff;
    border-color: transparent;
    background-color: {{ accent }};
  }
}

.nautilus-operations-button-needs-attention {
  animation: needs_attention_keyframes 2s ease-in-out;
}

.nautilus-operations-button-needs-attention-multiple {
  animation: needs_attention_keyframes 3s ease-in-out;
  animation-iteration-count: 3;
}

.conflict-row.activatable, .conflict-row.activatable:active {
  color: white;
  background-color: #FC4138;
}

.conflict-row.activatable:hover {
  background-color: #fd716a;
}

.conflict-row.activatable:selected {
  color: #ffffff;
  background-color: {{ accent }};
}

.open-document-selector-treeview.view {
  padding: 3px 6px 3px 6px;
  border-color: #262626;
}

.open-document-selector-treeview.view:hover {
  background-color: #323131;
}

.open-document-selector-treeview.view:hover:selected {
  color: #ffffff;
  background-color: {{ accent }};
}

.open-document-selector-name-label {
  color: #cbbfbf;
}

.open-document-selector-path-label {
  color: #797373;
  font-size: smaller;
}

.open-document-selector-path-label:selected {
  color: rgba(255, 255, 255, 0.9);
}

.gedit-document-panel row button {
  min-width: 22px;
  min-height: 22px;
  padding: 0;
  color: transparent;
  background: none;
  border: none;
  box-shadow: none;
}

.gedit-document-panel row button image {
  color: inherit;
}

.gedit-document-panel row:hover:not(:selected) button {
  color: #908888;
}

.gedit-document-panel row:hover:not(:selected) button:hover {
  color: #ff4d4d;
}

.gedit-document-panel row:hover:not(:selected) button:active {
  color: #cbbfbf;
}

.gedit-document-panel row:hover:selected button:hover {
  color: #ff6666;
  background: none;
  border: none;
  box-shadow: none;
}

.gedit-document-panel row:hover:selected button:hover:active {
  color: #ffffff;
}

.gedit-document-panel-dragged-row {
  border: 1px solid rgba(0, 0, 0, 0.25);
  background-color: #090909;
  color: #cbbfbf;
}

.gedit-side-panel-paned statusbar {
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  background-color: #222222;
}

.gedit-search-slider {
  background-color: #272727;
  padding: 6px;
  border-color: rgba(0, 0, 0, 0.25);
  border-radius: 0 0 2px 2px;
  border-width: 0 1px 1px 1px;
  border-style: solid;
}

.gedit-search-entry-occurrences-tag {
  color: rgba(203, 191, 191, 0.6);
  border: none;
  margin: 2px;
  padding: 2px;
}

.gedit-map-frame border {
  border-width: 0;
}

.gedit-map-frame border:dir(ltr) {
  border-left-width: 1px;
}

.gedit-map-frame border:dir(rtl) {
  border-right-width: 1px;
}

.gedit-side-panel-paned.horizontal separator {
  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.24), rgba(0, 0, 0, 0.11) 2px, rgba(0, 0, 0, 0.05) 4px, rgba(0, 0, 0, 0.05));
  background-position: left top;
  background-repeat: no-repeat;
  background-size: 1px auto;
}

.gb-search-entry-occurrences-tag {
  background: none;
}

workbench.csd > stack.titlebar:not(headerbar) {
  padding: 0;
  background: none;
  border: none;
  box-shadow: none;
}

workbench.csd > stack.titlebar:not(headerbar) headerbar, workbench.csd > stack.titlebar:not(headerbar) headerbar:first-child, workbench.csd > stack.titlebar:not(headerbar) headerbar:last-child {
  border-radius: 2px 2px 0 0;
}

editortweak .linked > entry.search:focus + .gb-linked-scroller {
  border-top-color: {{ accent }};
}

layouttab {
  background-color: #262626;
}

layout {
  border: 1px solid rgba(0, 0, 0, 0.25);
  -PnlDockBin-handle-size: 1;
}

eggsearchbar box.search-bar {
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

pillbox {
  color: #ffffff;
  background-color: {{ accent }};
  border-radius: 3px;
}

pillbox:disabled label {
  color: rgba(255, 255, 255, 0.5);
}

docktabstrip {
  padding: 0 6px;
  background-color: #222222;
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

docktabstrip docktab {
  min-height: 28px;
  border: solid transparent;
  border-width: 0 1px;
}

docktabstrip docktab label {
  opacity: 0.5;
}

docktabstrip docktab:checked label, docktabstrip docktab:hover label {
  opacity: 1;
}

docktabstrip docktab:checked {
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #262626;
}

dockbin {
  border: 1px solid rgba(0, 0, 0, 0.25);
  -PnlDockBin-handle-size: 1;
}

dockpaned {
  border: 1px solid rgba(0, 0, 0, 0.25);
}

dockoverlayedge {
  background-color: #222222;
}

dockoverlayedge docktabstrip {
  padding: 0;
  border: none;
}

dockoverlayedge.left-edge tab:checked, dockoverlayedge.right-edge tab:checked {
  border-width: 1px 0;
}

popover.messagepopover.background {
  padding: 0;
}

popover.messagepopover .popover-content-area {
  margin: 16px;
}

popover.messagepopover .popover-action-area {
  margin: 8px;
}

popover.messagepopover .popover-action-area button:not(:first-child):not(:last-child) {
  margin: 0 4px;
}

popover.popover-selector {
  padding: 0;
}

popover.popover-selector list row {
  padding: 5px 0;
}

popover.popover-selector list row image {
  margin-left: 3px;
  margin-right: 10px;
}

button.dzlmenubuttonitem.check label {
  color: #cbbfbf;
}

button.dzlmenubuttonitem.check label.dim-label, button.dzlmenubuttonitem.check .slate-notification label.notification-body, .slate-notification button.dzlmenubuttonitem.check label.notification-body,
button.dzlmenubuttonitem.check .budgie-notification label.notification-body,
button.dzlmenubuttonitem.check .budgie-switcher label.notification-body,
.budgie-notification button.dzlmenubuttonitem.check label.notification-body,
.budgie-switcher button.dzlmenubuttonitem.check label.notification-body, button.dzlmenubuttonitem.check label.separator, button.dzlmenubuttonitem.check headerbar label.subtitle, headerbar button.dzlmenubuttonitem.check label.subtitle {
  color: #cbbfbf;
}

button.dzlmenubuttonitem.check box > image {
  opacity: 0.87;
}

entry.search.preferences-search {
  border: none;
  border-right: 1px solid rgba(0, 0, 0, 0.25);
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 0;
}

preferences stacksidebar.sidebar list {
  background-image: linear-gradient(to bottom, #262626, #262626);
}

preferences stacksidebar.sidebar list separator {
  background-color: transparent;
}

devhelppanel entry:focus,
symboltreepanel entry:focus {
  border-color: rgba(0, 0, 0, 0.25);
}

button.run-arrow-button {
  min-width: 12px;
}

omnibar.linked > entry:not(:only-child) {
  border-style: solid;
  border-radius: 3px;
  margin-left: 1px;
  margin-right: 1px;
}

gstyleslidein #scale_box button.toggle:checked,
gstyleslidein #strings_controls button.toggle:checked,
gstyleslidein #palette_controls button.toggle:checked,
gstyleslidein #components_controls button.toggle:checked {
  color: #cbbfbf;
}

configurationview entry.flat {
  background: none;
}

configurationview list {
  border-width: 0;
}

eog-thumb-nav scrolledwindow {
  border-top: none;
}

eog-thumb-nav button {
  -gtk-outline-radius: 2px;
  border-radius: 2px;
}

.documents-scrolledwin.frame {
  border-width: 0;
}

button.documents-load-more {
  border-width: 1px 0 0;
  border-radius: 0;
}

.documents-icon-bg {
  background-color: {{ accent }};
  color: #ffffff;
  border-radius: 2px;
}

.documents-collection-icon, .photos-collection-icon {
  background-color: rgba(203, 191, 191, 0.3);
  border-radius: 2px;
}

button.documents-favorite:active,
button.documents-favorite:active:hover {
  color: #f8aeaa;
}

.documents-entry-tag, .photos-entry-tag {
  color: #ffffff;
  background: {{ accent }};
  border-radius: 2px;
  border-width: 0;
  margin: 2px;
  padding: 4px;
}

.documents-entry-tag:hover, .photos-entry-tag:hover {
  color: #ffffff;
  background: #f2665f;
}

.documents-entry-tag:active, .photos-entry-tag:active {
  color: #ffffff;
  background: #ee4239;
}

.documents-entry-tag.button, .button.photos-entry-tag {
  box-shadow: none;
  border: none;
  background-color: transparent;
}

.content-view.document-page {
  border-style: solid;
  border-width: 3px 3px 6px 4px;
  border-image: url("assets/thumbnail-frame.png") 3 3 6 4;
}

window.background.csd > headerbar.titlebar > box.horizontal > separator.sidebar,
window.background.csd > headerbar.titlebar > hdyleaflet > separator.sidebar {
  border-right: none;
  background: none;
  min-width: 0;
}

box.horizontal > separator.sidebar,
hdyleaflet > separator.sidebar {
  background: none;
  min-width: 0;
}

window.background > hdyleaflet > stack.background > widget > box.vertical > box.vertical > scrolledwindow > viewport.frame > box.vertical > box.vertical > flowbox.horizontal > flowboxchild > overlay > button.osd.image-button.remove-button {
  padding-top: 0;
  padding-bottom: 0;
}

.photos-fade-in {
  opacity: 1.0;
  transition: opacity 0.2s ease-out;
}

.photos-fade-out {
  opacity: 0.0;
  transition: opacity 0.2s ease-out;
}

.tweak-categories,
.tweak-category:not(:selected):not(:hover) {
  background-image: linear-gradient(to bottom, #262626, #262626);
}

row#Focus,
row#ClickMethod,
row#StaticWorkspaceTweak,
row#dynamic-workspaces,
row#PrimaryWorkspaceTweak,
row#workspaces-only-on-primary {
  padding: 0;
  border: 1px solid rgba(0, 0, 0, 0.25);
}

row#Focus row:not(:last-child),
row#ClickMethod row:not(:last-child),
row#StaticWorkspaceTweak row:not(:last-child),
row#dynamic-workspaces row:not(:last-child),
row#PrimaryWorkspaceTweak row:not(:last-child),
row#workspaces-only-on-primary row:not(:last-child) {
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

row#Focus.tweak > list,
row#ClickMethod.tweak > list,
row#StaticWorkspaceTweak.tweak > list,
row#dynamic-workspaces.tweak > list,
row#PrimaryWorkspaceTweak.tweak > list,
row#workspaces-only-on-primary.tweak > list {
  margin-top: -3px;
}

row#Focus,
row#ClickMethod,
row#PrimaryWorkspaceTweak,
row#workspaces-only-on-primary {
  margin-top: 4px;
}

row#AutostartTitle.tweak {
  padding: 3px;
  background-color: #262626;
}

list#AutostartListBoxTweakGroup.tweak-group-startup {
  border: 1px solid rgba(0, 0, 0, 0.25);
}

.tr-workarea undershoot,
.tr-workarea overshoot {
  border-color: transparent;
}

#gf-bubble, #gf-bubble.solid,
#gf-osd-window,
#gf-osd-window.solid,
#gf-input-source-popup,
#gf-input-source-popup.solid,
#gf-candidate-popup,
#gf-candidate-popup.solid {
  color: #e0dbdb;
  background-color: rgba(41, 41, 41, 0.95);
  border: 1px solid rgba(21, 21, 21, 0.95);
  border-radius: 2px;
}

#gf-bubble levelbar block.low, #gf-bubble levelbar block.high, #gf-bubble levelbar block.full,
#gf-osd-window levelbar block.low,
#gf-osd-window levelbar block.high,
#gf-osd-window levelbar block.full,
#gf-input-source-popup levelbar block.low,
#gf-input-source-popup levelbar block.high,
#gf-input-source-popup levelbar block.full,
#gf-candidate-popup levelbar block.low,
#gf-candidate-popup levelbar block.high,
#gf-candidate-popup levelbar block.full {
  background-color: {{ accent }};
  border-color: {{ accent }};
}

#gf-bubble levelbar block.empty,
#gf-osd-window levelbar block.empty,
#gf-input-source-popup levelbar block.empty,
#gf-candidate-popup levelbar block.empty {
  background-color: rgba(29, 29, 29, 0.95);
}

#gf-bubble levelbar trough,
#gf-osd-window levelbar trough,
#gf-input-source-popup levelbar trough,
#gf-candidate-popup levelbar trough {
  background: none;
}

#gf-input-source {
  min-height: 32px;
  min-width: 40px;
}

#gf-input-source:selected {
  color: #ffffff;
  background-color: {{ accent }};
  border-radius: 2px;
}

gf-candidate-box label {
  padding: 3px;
}

gf-candidate-box:hover, gf-candidate-box:selected {
  color: #ffffff;
  background-color: {{ accent }};
  border-radius: 2px;
}

stack grid.vertical scrolledwindow.frame,
stack grid.vertical scrolledwindow.frame.emptyGrid {
  border: none;
}

eog-thumb-nav scrolledwindow, eog-thumb-nav scrolledwindow.frame,
#eog-thumb-nav scrolledwindow,
#eog-thumb-nav scrolledwindow.frame {
  border-top: none;
}

eog-thumb-nav button,
#eog-thumb-nav button {
  -gtk-outline-radius: 2px;
  border-radius: 2px;
  border-top: none;
}

window.background.csd overlay > grid.horizontal frame:dir(ltr) > border {
  border-top-width: 0;
  border-left-width: 0;
  border-bottom-width: 0;
}

frame.sidebar.chat-sidebar > border {
  border-right: none;
}

frame.sidebar.chat-sidebar frame.chat-status-area > border {
  border-style: none;
  border-top-style: solid;
}

widget#PROCESSOR list row, widget#MEMORY list row {
  margin: -1px;
  border: 1px solid #1a1a1a;
}

widget#PROCESSOR list row.max, widget#MEMORY list row.max {
  color: rgba(41, 41, 41, 0.95);
}

widget#PROCESSOR list separator.list, widget#MEMORY list separator.list {
  box-shadow: inset 0 0 0 1px #1a1a1a;
}

widget#STORAGE list {
  margin: -1px;
}

widget#STORAGE list row.activatable {
  color: rgba(203, 191, 191, 0.75);
}

widget#STORAGE list row.activatable:hover, widget#STORAGE list row.activatable:active {
  color: rgba(203, 191, 191, 0.75);
}

widget#STORAGE list separator.list {
  box-shadow: inset 0 0 0 1px #1a1a1a;
}

widget#PERFORMANCE searchbar {
  box-shadow: inset 0 -2px rgba(0, 0, 0, 0.25), inset 0 -1px #222222;
}

widget#PERFORMANCE searchbar entry, widget#PERFORMANCE searchbar button {
  margin-bottom: 2px;
}

graph-switcher-button.toggle {
  color: rgba(203, 191, 191, 0.75);
  font-weight: 500;
}

graph-switcher-button.toggle:hover {
  color: #cbbfbf;
  background-image: image(rgba(255, 255, 255, 0.03));
}

rg-graph.big {
  background-position: left top;
  background-origin: border-box;
  background-repeat: repeat;
}

box.speedometer-outter {
  opacity: 0.8;
}

box.speedometer-content-area {
  box-shadow: 0 0 0 4px rgba(240, 84, 76, 0.2);
}

headerbar > button.flat.popup.title-menu-button.toggle {
  border-radius: 2px;
  -gtk-outline-radius: 2px;
}

headerbar > button.flat.popup.title-menu-button.toggle > grid .title {
  margin: -0.16875rem 0;
  padding: 0.08125rem 0.83125rem 0;
  font-size: 90%;
}

headerbar > button.flat.popup.title-menu-button.toggle > grid .subtitle {
  margin: -0.16875rem 0;
  padding: 0 0.83125rem 0.08125rem;
  font-size: 80%;
}

window.background > box.vertical box.horizontal list.categories {
  background-color: #222222;
  border: none;
  color: #cbbfbf;
}

window.background > box.vertical box.horizontal list.categories row.activatable.category {
  color: #cbbfbf;
  background-color: transparent;
  font-weight: 500;
}

window.background > box.vertical box.horizontal list.categories row.activatable.category:hover {
  color: #cbbfbf;
  background-color: rgba(203, 191, 191, 0.08);
}

window.background > box.vertical box.horizontal list.categories row.activatable.category:selected {
  color: #ffffff;
  background-color: {{ accent }};
}

window.background > box.vertical box.horizontal list.categories row.activatable.category:selected label {
  color: #ffffff;
}

window.background > box.vertical box.horizontal list.categories row.activatable.category > label {
  padding-left: 0;
  padding-right: 0;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list > separator {
  background-color: transparent;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list > separator.compressed-rows-group-separator {
  background-image: image(rgba(0, 0, 0, 0.25));
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable {
  color: #cbbfbf;
  transition-duration: 0.1s;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable:hover, window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable:active {
  color: #cbbfbf;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable label.compressed-entries-label {
  background-image: image(#2eb398);
  color: #ffffff;
  font-weight: 700;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row {
  background-image: image(#1a1a1a);
  color: #9d8787;
  transition-property: opacity, border-image, background-image, box-shadow;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row:hover {
  background-image: image(#2a2a2a);
  color: #cbbfbf;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row:active, window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row:active:focus {
  background-image: image(#333232);
  color: #cbbfbf;
  animation: none;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row.popover-activated-row {
  background-image: image({{ accent }});
  color: #ffffff;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row-header {
  background-image: image(#262626);
  color: {{ accent }};
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row-header:hover {
  background-image: image(#302828);
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row-header:active, window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row-header:active:focus {
  background-image: image(#3a2b2a);
  color: {{ accent }};
  animation: none;
}

window.background > box.vertical box.horizontal > box.vertical > scrolledwindow > viewport.frame > list row.event.activatable.compressed-row-header label.compressed-entries-label {
  background-image: image({{ accent }});
  color: #ffffff;
  transition-duration: 0s;
}

button.round-button {
  min-height: 28px;
  min-width: 28px;
  padding: 0;
}

window.background > box.vertical > searchbar {
  box-shadow: none;
}

window.background > box.vertical > overlay > stack > widget > stack > box.vertical > scrolledwindow > viewport.frame > widget > list {
  background-color: #222222;
}

window.background > box.vertical > overlay > stack > widget > stack > box.vertical > scrolledwindow > viewport.frame > widget > list > separator {
  border-left: 100px solid transparent;
  border-right: 100px solid transparent;
}

window.background > box.vertical > overlay > stack > widget > stack widget > box.vertical.app-list {
  background-image: image(#222222);
}

window.background > box.vertical > overlay > stack > widget > stack widget > box.vertical.app-list > box.vertical > list {
  background-color: #222222;
}

window.background > box.vertical > overlay > stack > widget > stack widget > box.vertical.app-list separator {
  border-left: 100px solid transparent;
  border-right: 100px solid transparent;
}

.category_page_header_filter_box {
  background-image: image(#222222);
  border-image: linear-gradient(to bottom, #1a1a1a, #1a1a1a) 0 0 1 0/0 0 1px 0 stretch;
}

.category_page_header_filter_box button {
  color: rgba(203, 191, 191, 0.45);
  background-image: image(#222222);
}

.category_page_header_filter_box button:hover {
  color: rgba(203, 191, 191, 0.75);
}

.category_page_header_filter_box button:checked {
  color: #cbbfbf;
}

.category_page_header_filter_box button:disabled {
  color: rgba(203, 191, 191, 0.65);
}

.application-details-infobar {
  background-image: image(#262626);
  border-image: linear-gradient(to bottom, #1a1a1a, #1a1a1a) 1 1 1 1/1px 1px 1px 1px stretch;
}

headerbar.titlebar.incognito-mode entry {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.42);
}

headerbar.titlebar.incognito-mode entry image, headerbar.titlebar.incognito-mode entry image:hover {
  color: inherit;
}

headerbar.titlebar.incognito-mode entry:focus {
  color: white;
  border-color: {{ accent }};
  background-color: rgba(67, 67, 67, 0.42);
}

headerbar.titlebar.incognito-mode entry:disabled {
  color: rgba(208, 200, 200, 0.55);
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.85);
}

notebook > box > stack > box.vertical > paned.vertical > overlay > .floating-bar {
  color: rgba(203, 191, 191, 0.75);
}

.background headerbar entry.starred, .background headerbar entry.non-starred {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.42);
}

.background headerbar entry.starred image, .background headerbar entry.starred image:hover, .background headerbar entry.non-starred image, .background headerbar entry.non-starred image:hover {
  color: inherit;
}

.background headerbar entry.starred:focus, .background headerbar entry.non-starred:focus {
  color: white;
  border-color: {{ accent }};
  background-color: rgba(67, 67, 67, 0.42);
}

.background headerbar entry.starred:disabled, .background headerbar entry.non-starred:disabled {
  color: rgba(208, 200, 200, 0.55);
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.85);
}

.background headerbar entry.starred > image.right {
  color: #ccbb00;
}

.background headerbar entry.starred > image.right:hover, .background headerbar entry.starred > image.right:active, .background headerbar entry.starred > image.right:checked {
  color: #FFEA00;
}

popover.background:not(.emoji-picker) > box.vertical > scrolledwindow > viewport.frame > list.background {
  background-color: transparent;
}

popover.background:not(.emoji-picker) > box.vertical > scrolledwindow > viewport.frame > list.background > row.activatable {
  background-color: #3c3c3c;
  color: rgba(203, 191, 191, 0.85);
  border-radius: 2px;
  border: 1px solid rgba(0, 0, 0, 0.25);
  margin: 2px;
}

popover.background:not(.emoji-picker) > box.vertical > scrolledwindow > viewport.frame > list.background > row.activatable:hover {
  color: #a99595;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #404040;
}

popover.background:not(.emoji-picker) > box.vertical > stack > box.vertical {
  margin: 0;
  padding: 0;
}

popover.background:not(.emoji-picker) > box.vertical > stack > box.vertical scrolledwindow > viewport.frame {
  border: 1px solid rgba(0, 0, 0, 0.25);
}

popover.background:not(.emoji-picker) > box.vertical > stack > box.vertical scrolledwindow > viewport.frame > list.background > row.activatable.bookmarks-row {
  background-color: rgba(38, 38, 38, 0.35);
  color: rgba(203, 191, 191, 0.85);
  border-bottom: 1px dashed rgba(0, 0, 0, 0.05);
  padding: 6px 0;
  margin: 0;
}

popover.background:not(.emoji-picker) > box.vertical > stack > box.vertical scrolledwindow > viewport.frame > list.background > row.activatable.bookmarks-row:hover, popover.background:not(.emoji-picker) > box.vertical > stack > box.vertical scrolledwindow > viewport.frame > list.background > row.activatable.bookmarks-row:active, popover.background:not(.emoji-picker) > box.vertical > stack > box.vertical scrolledwindow > viewport.frame > list.background > row.activatable.bookmarks-row:checked {
  color: #cbbfbf;
  background-color: rgba(203, 191, 191, 0.05);
}

popover.background:not(.emoji-picker) > box.vertical > stack > box.vertical scrolledwindow > viewport.frame > list.background > row.activatable.bookmarks-row button.flat {
  min-width: 16px;
  min-height: 16px;
  padding: 4px;
  margin: 0 6px;
  border-radius: 100px;
  -gtk-outline-radius: 100px;
}

flowboxchild.bookmark-tag-widget {
  color: #222222;
  font-weight: 500;
}

flowboxchild.bookmark-tag-widget label {
  margin-bottom: 2px;
}

flowboxchild.bookmark-tag-widget-selected {
  color: #ffffff;
}

.sidebar-paned .inline-toolbar.horizontal.sidebar-toolbar {
  box-shadow: inset 0 1px rgba(0, 0, 0, 0.25);
  padding: 4px;
  background-color: #1a1a1a;
}

.sidebar-paned .inline-toolbar.horizontal.sidebar-toolbar button.image-button > widget > box > image {
  padding: 0;
}

.sidebar-paned scrolledwindow {
  border: none;
}

window.csd > box.vertical > box.vertical > toolbar.horizontal, window.csd > box.vertical > box.vertical > .horizontal.inline-toolbar,
window.solid-csd > box.vertical > box.vertical > toolbar.horizontal,
window.solid-csd > box.vertical > box.vertical > .horizontal.inline-toolbar {
  margin: -1px 0;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  box-shadow: none;
  background-color: transparent;
}

window.csd > box.vertical > box.vertical > toolbar.horizontal button, window.csd > box.vertical > box.vertical > .horizontal.inline-toolbar button,
window.solid-csd > box.vertical > box.vertical > toolbar.horizontal button,
window.solid-csd > box.vertical > box.vertical > .horizontal.inline-toolbar button {
  min-height: 36px;
  min-width: 36px;
  padding: 0;
  margin-top: 8px;
  margin-bottom: 8px;
}

window.csd > box.vertical > box.vertical > frame,
window.solid-csd > box.vertical > box.vertical > frame {
  margin: -1px 0;
  padding: 0;
}

window.csd > box.vertical > box.vertical > frame > border,
window.solid-csd > box.vertical > box.vertical > frame > border {
  border: none;
}

window.background > box.vertical > toolbar.primary-toolbar toolitem .linked > button.image-button.raised, window.background > box.vertical > .primary-toolbar.inline-toolbar toolitem .linked > button.image-button.raised {
  min-height: 36px;
  min-width: 36px;
  padding: 0;
  margin: 0;
}

window.background > box.vertical > toolbar.primary-toolbar toolitem .linked > button.image-button.raised > widget > box > image, window.background > box.vertical > .primary-toolbar.inline-toolbar toolitem .linked > button.image-button.raised > widget > box > image {
  padding: 0;
}

window.background > box.vertical > toolbar.primary-toolbar toolitem button.flat.scale, window.background > box.vertical > .primary-toolbar.inline-toolbar toolitem button.flat.scale {
  min-height: 24px;
  min-width: 36px;
  padding: 0;
  margin-top: 8px;
  margin-bottom: 8px;
}

window.background > box.vertical > toolbar.primary-toolbar toolitem > box.horizontal:not(.linked) > button.toggle, window.background > box.vertical > .primary-toolbar.inline-toolbar toolitem > box.horizontal:not(.linked) > button.toggle,
window.background > box.vertical > toolbar.primary-toolbar toolitem > .linked > button:not(.toggle):not(.raised):not(.flat),
window.background > box.vertical > .primary-toolbar.inline-toolbar toolitem > .linked > button:not(.toggle):not(.raised):not(.flat) {
  min-height: 28px;
  min-width: 28px;
  padding: 0;
  margin: 0;
}

dialog.background.csd box.dialog-vbox grid.horizontal scrolledwindow.frame {
  border: none;
}

dialog.background.csd box.dialog-vbox grid.horizontal scrolledwindow.frame viewport.frame {
  border: none;
}

dialog.background.csd box.dialog-vbox grid.horizontal stack scrolledwindow.frame {
  border: 1px solid rgba(0, 0, 0, 0.25);
}

.maps-popover button.radio.layer-radio-button:checked {
  box-shadow: 0 0 0 2px {{ accent }};
}

.nautilus-window .floating-bar {
  padding: 1px;
  background-color: #262626;
  color: #cbbfbf;
  border-radius: 2px 2px 0 0;
  border: 1px solid rgba(0, 0, 0, 0.25);
}

.nautilus-window .floating-bar.bottom.left {
  border-top-left-radius: 0;
  border-width: 1px 1px 0 0;
}

.nautilus-window .floating-bar.bottom.right {
  border-top-right-radius: 0;
  border-width: 1px 0 0 1px;
}

.nautilus-window .floating-bar button {
  border: none;
  border-radius: 100px;
  min-height: 0;
  min-width: 0;
  padding: 0;
  margin-right: 6px;
  -gtk-icon-shadow: none;
}

.nemo-window menubar > menuitem > window.background.popup > menu,
.nemo-window .menubar > menuitem > window.background.popup > menu {
  border-radius: 0 0 2px 2px;
}

.nemo-window paned.horizontal > separator {
  background-image: image(#1a1a1a);
}

.nemo-window .nemo-places-sidebar.frame {
  border-width: 0;
}

.nemo-window .nemo-places-sidebar .places-treeview {
  background-color: #222222;
  -NemoPlacesTreeView-disk-full-bg-color: #1a1a1a;
  -NemoPlacesTreeView-disk-full-fg-color: #00ab75;
}

.nemo-window .nemo-places-sidebar .places-treeview:selected .sidebar-icon, .nemo-window .nemo-places-sidebar .places-treeview:selected:hover .sidebar-icon {
  color: inherit;
}

.nemo-window .NemoSidebar {
  background-color: #222222;
}

.nemo-window .NemoSidebar:selected, .nemo-window .NemoSidebar:selected:hover, .nemo-window .NemoSidebar:selected:focus {
  background-color: rgba(203, 191, 191, 0.15);
  color: #cbbfbf;
}

.nemo-window .NemoSidebar.expander:hover {
  color: #bbb0b0;
}

.nemo-window .NemoSidebar.expander:selected, .nemo-window .NemoSidebar.expander:selected:hover {
  color: #aaa0a0;
}

.nemo-window notebook {
  background-color: #262626;
}

.nemo-window .nemo-window-pane widget.entry {
  border: 1px solid;
  border-radius: 3px;
  color: #b5abab;
  border-color: {{ accent }};
  background-color: #262626;
}

.nemo-window .primary-toolbar {
  padding-top: 0;
  padding-bottom: 0;
  border: none;
  color: #d0c8c8;
  background-color: #1a1a1a;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.error + entry,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry.error,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.warning + entry,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry.warning,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.error + entry.warning,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.warning + entry.error {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry:focus:not(:last-child),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry:focus:last-child {
  border-left-color: {{ accent }};
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked) {
  border-left-color: transparent;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + button:hover,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:focus:not(:only-child) + combobox > box > button.combo:hover {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry:drop(active):not(:last-child),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry:drop(active):last-child {
  border-left-color: #F08437;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + button:not(:hover):not(:active):not(:checked),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked) {
  border-left-color: transparent;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + button:hover,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry:drop(active):not(:only-child) + combobox > box > button.combo:hover {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry.warning:focus:not(:last-child),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry.warning:focus:last-child {
  border-left-color: #F27835;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked) {
  border-left-color: transparent;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + button:hover,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.warning:focus:not(:only-child) + combobox > box > button.combo:hover {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry.error:focus:not(:last-child),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry + entry.error:focus:last-child {
  border-left-color: #FC4138;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + button:not(:hover):not(:active):not(:checked),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + combobox > box > button.combo:not(:hover):not(:active):not(:checked) {
  border-left-color: transparent;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + button:hover,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > entry.error:focus:not(:only-child) + combobox > box > button.combo:hover {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:active + entry,
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:checked + entry {
  border-left-color: rgba(0, 0, 0, 0.42);
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button + button {
  border-left-style: solid;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action) {
  box-shadow: none;
}

.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.nemo-window .primary-toolbar .linked:not(.vertical):not(.path-bar):not(.stack-switcher) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover) {
  box-shadow: none;
}

.nemo-window .primary-toolbar button {
  min-height: 20px;
  margin-top: 6px;
  margin-bottom: 6px;
}

.nemo-window .primary-toolbar entry {
  min-height: 22px;
  margin-top: 4px;
  margin-bottom: 4px;
}

.nemo-window .primary-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button,
.nemo-window .primary-toolbar widget.linked.raised:not(.vertical):not(.path-bar) button {
  padding: 2px 4px 4px 4px;
  margin-top: 6px;
  margin-bottom: 6px;
}

.nemo-window .sidebar scrolledwindow.frame {
  border: none;
}

.nemo-window .floating-bar {
  padding: 2px;
  background-color: {{ accent }};
  color: #ffffff;
  border-radius: 0;
}

.nemo-window .floating-bar.bottom.left {
  border-top-right-radius: 2px;
}

.nemo-window .floating-bar.bottom.right {
  border-top-left-radius: 2px;
}

.nemo-window .floating-bar button {
  border: none;
  border-radius: 3px;
  min-height: 16px;
  min-width: 16px;
  -gtk-icon-shadow: none;
}

window.background:not(.csd) > widget > separator {
  color: rgba(0, 0, 0, 0.25);
}

window.background:not(.csd) > widget > scrollbar {
  background-clip: border-box;
}

window.background:not(.csd) > widget > scrollbar,
window.background:not(.csd) > widget > frame > border {
  border-color: #212121;
}

window.background:not(.csd) > widget > entry,
window.background:not(.csd) > widget > button > button {
  border: 1px solid #212121;
  border-radius: 2px;
}

window.background:not(.csd) > widget > entry,
window.background:not(.csd) > widget .entry {
  border-radius: 2px;
  background-image: image(#262626);
  border: 1px solid #212121;
}

window.background:not(.csd) > widget > entry:focus,
window.background:not(.csd) > widget .entry:focus {
  border-color: {{ accent }};
}

window.background:not(.csd) > widget > spinbutton {
  background-image: image(#2b2b2b);
  border: 1px solid #212121;
}

window.background:not(.csd) > widget > spinbutton:active {
  background-image: image({{ accent }});
}

window.background:not(.csd) > widget > spinbutton .entry {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}

window.background:not(.csd) > menu > separator {
  color: rgba(0, 0, 0, 0.25);
}

window.background:not(.csd) > menu > menuitem > label:disabled {
  color: rgba(203, 191, 191, 0.45);
}

#MozillaGtkWidget.background {
  background-color: #222222;
}

#MozillaGtkWidget.background, #MozillaGtkWidget.background decoration {
  border-radius: 0 0 0 0;
}

#MozillaGtkWidget.background headerbar.titlebar {
  border-radius: 0 0 0 0;
}

#MozillaGtkWidget.background headerbar.titlebar.default-decoration button.titlebutton {
  margin: 0;
  padding: 0;
}

#MozillaGtkWidget.background .background,
#MozillaGtkWidget.background frame,
#MozillaGtkWidget.background separator,
#MozillaGtkWidget.background scrolledwindow {
  background-color: #222222;
}

#MozillaGtkWidget.background scrollbar {
  background-color: #484848;
}

#MozillaGtkWidget.background scrollbar slider {
  background-color: #6e6969;
}

#MozillaGtkWidget.background scrollbar slider:hover {
  background-color: #878080;
}

#MozillaGtkWidget.background scrollbar slider:hover:active {
  background-color: #a19898;
}

#MozillaGtkWidget.background scrollbar slider:disabled {
  background-color: transparent;
}

#MozillaGtkWidget.background *:not(menuitem):hover, #MozillaGtkWidget.background *:not(menuitem):hover button,
#MozillaGtkWidget.background *:focus,
#MozillaGtkWidget.background *:focus button,
#MozillaGtkWidget.background *:active,
#MozillaGtkWidget.background *:active button,
#MozillaGtkWidget.background *:checked,
#MozillaGtkWidget.background *:checked button {
  color: #cbbfbf;
}

#MozillaGtkWidget.background > window.background > menu {
  background-color: #262626;
}

#MozillaGtkWidget.background > window.background > menu > separator {
  padding: 0;
  border: none;
  background-color: #212121;
}

#MozillaGtkWidget.background > widget border {
  border-color: #212121;
}

#MozillaGtkWidget.background > widget separator {
  background-color: #212121;
}

#MozillaGtkWidget.background > widget > scrolledwindow > textview {
  background-color: #333333;
}

#MozillaGtkWidget.background > widget > scrolledwindow > textview text {
  background-color: transparent;
  color: #aaaaaa;
}

window.background.chromium {
  background-color: #222222;
  color: #cbbfbf;
}

window.background.chromium headerbar.titlebar button.toggle {
  color: #d0c8c8;
  outline-offset: -3px;
  background-color: transparent;
  border-color: transparent;
}

window.background.chromium headerbar.titlebar button.toggle:hover {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: rgba(208, 200, 200, 0.18);
}

window.background.chromium headerbar.titlebar button.toggle:checked, window.background.chromium headerbar.titlebar button.toggle:active {
  color: #ffffff;
  border-color: transparent;
  background-color: {{ accent }};
}

window.background.chromium headerbar.titlebar button.titlebutton {
  min-width: 16px;
  min-height: 16px;
  margin: 0 4px;
  padding: 0;
  color: transparent;
}

window.background.chromium button {
  border-width: 1px;
  border-style: solid;
  border-color: #1a1a1a;
  background-color: #222222;
  color: #cbbfbf;
}

window.background.chromium entry.chromium {
  border-image: none;
  border: 1px solid #1a1a1a;
  background-color: #222222;
  color: #cbbfbf;
}

window.background.chromium > textview.view {
  background-color: #222222;
  color: #cbbfbf;
}

window.background.chromium > textview {
  color: #cbbfbf;
  background-color: #222222;
}

window.background.chromium > textview text {
  color: #cbbfbf;
  background-color: #222222;
}

window.background.chromium > menubar {
  background-color: #1a1a1a;
  color: #d0c8c8;
}

window.background.chromium > menubar > menuitem {
  color: #d0c8c8;
}

window.background.chromium > menu {
  border: 1px solid #1a1a1a;
  background-color: #222222;
  color: #cbbfbf;
}

window.background.chromium > menu > separator {
  color: #222222;
  background-color: #222222;
}

window.background.chromium > menu > menuitem {
  color: #cbbfbf;
}

window.background.chromium > menu > menuitem:hover {
  color: #ffffff;
  background-color: {{ accent }};
}

window.background.chromium > menu > menuitem:disabled, window.background.chromium > menu > menuitem accelerator, window.background.chromium > menu > menuitem label:disabled {
  color: rgba(203, 191, 191, 0.45);
}

tooltip.background.chromium {
  border-color: rgba(11, 11, 11, 0.42);
  background-color: #292929;
}

.geary-sidebar-pane-separator frame.geary-folder-frame treeview.view.sidebar {
  background-color: #222222;
  color: #b5abab;
}

overlay.window-overlay grid.horizontal stack paned.horizontal stack widget.view.frame,
overlay.window-overlay grid.horizontal stack paned.horizontal stack scrolledwindow.frame {
  border-left: none;
  border-right: none;
}

overlay.window-overlay grid.horizontal stack .sidebar {
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

/****************
 * Libre-Office *
 ****************/
window.background:not(.csd):not(.solid-csd) > grid.horizontal > grid.horizontal {
  background-color: #1a1a1a;
}

window.background:not(.csd):not(.solid-csd) > grid.horizontal > grid.horizontal > button.flat.small-button {
  color: #d0c8c8;
  border: none;
}

window.background:not(.csd):not(.solid-csd) > grid.horizontal > grid.horizontal > button.flat.small-button:hover {
  background-color: #414141;
  color: #dcd6d6;
}

window.background:not(.csd):not(.solid-csd) > grid.horizontal > grid.horizontal > button.flat.small-button:active, window.background:not(.csd):not(.solid-csd) > grid.horizontal > grid.horizontal > button.flat.small-button:checked {
  background-color: {{ accent }};
  color: #f3f1f1;
}

window.background:not(.csd):not(.solid-csd) > grid.horizontal > grid.horizontal > button.flat.small-button:disabled {
  color: alpha(#d0c8c8,0.6);
}

window.background:not(.solid-csd) > notebook:not(.frame) {
  border: 0 none transparent;
  background-color: #262626;
}

window.background:not(.solid-csd) > notebook:not(.frame) > stack {
  border: none;
  box-shadow: none;
}

widget > box.terminal-titlebar {
  padding: 0 6px;
}

widget > box.terminal-titlebar > button.flat.popup.toggle {
  border: none;
  border-radius: 0;
  padding-top: 0;
  padding-bottom: 0;
  border-image: radial-gradient(circle closest-corner at center calc(100% - 1px), {{ accent }} 0%, transparent 0%) 0 0 0/0 0 0;
}

widget > box.terminal-titlebar > button.flat.popup.toggle:dir(ltr) {
  padding-right: 6px;
}

widget > box.terminal-titlebar > button.flat.popup.toggle:dir(rtl) {
  padding-left: 6px;
}

widget > box.terminal-titlebar > button.flat.popup.toggle:hover {
  box-shadow: inset 0 -2px {{ accent }};
  background: none;
}

widget > box.terminal-titlebar > button.flat.popup.toggle:checked, widget > box.terminal-titlebar > button.flat.popup.toggle:active {
  border-image: radial-gradient(circle closest-corner at center calc(100% - 1px), {{ accent }} 100%, transparent 0%) 0 0 2/0 0 2px;
  background-color: transparent;
  color: #cbbfbf;
}

widget > box.terminal-titlebar > button.image-button, widget > box.terminal-titlebar > button.image-button.toggle {
  margin: 2px 0;
  padding: 0;
  min-height: 24px;
  min-width: 24px;
  border-radius: 100px;
  -gtk-outline-radius: 100px;
}

list.tilix-session-sidebar {
  background-image: image(rgba(54, 54, 54, 0.95));
}

list.tilix-session-sidebar button.tilix-sidebar-close-button {
  min-height: 20px;
  min-width: 20px;
  padding: 0;
  border-radius: 100px;
  -gtk-outline-radius: 100px;
  background-color: #db5b5b;
}

list.tilix-session-sidebar button.tilix-sidebar-close-button, list.tilix-session-sidebar button.tilix-sidebar-close-button:hover, list.tilix-session-sidebar button.tilix-sidebar-close-button:active, list.tilix-session-sidebar button.tilix-sidebar-close-button:checked {
  color: white;
}

list.tilix-session-sidebar button.tilix-sidebar-close-button:hover {
  background-color: #e48585;
}

list.tilix-session-sidebar button.tilix-sidebar-close-button:active, list.tilix-session-sidebar button.tilix-sidebar-close-button:checked {
  background-image: image(#d23131);
}

window.background.csd > box.vertical > stack > box.horizontal > list {
  background-color: transparent;
  border-right: 1px solid rgba(0, 0, 0, 0.25);
}

window.background.csd > box.vertical > stack > box.horizontal > box.vertical > stack > scrolledwindow.frame {
  border: none;
}

window.background.csd > box.vertical > stack > box.horizontal > revealer > stack > list {
  background-color: transparent;
  border-right: 1px solid rgba(0, 0, 0, 0.25);
}

window.background.csd > box.vertical > stack > box.horizontal > revealer > stack > scrolledwindow > viewport.frame > list {
  background-color: transparent;
  border-right: 1px solid rgba(0, 0, 0, 0.25);
}

window.background.csd > box.vertical > stack > box.horizontal > revealer > stack > scrolledwindow > viewport.frame > list {
  background-color: transparent;
  border-right: 1px solid rgba(0, 0, 0, 0.25);
}

window#ValaPanel.background {
  background-color: #222222;
  border: none;
  color: #d0c8c8;
}

window#ValaPanel.background widget.-vala-panel-background > separator {
  background: none;
}

window#ValaPanel.background .unpinned button.flat.-panel-icon-button {
  border-radius: 0;
}

window#ValaPanel.background .unpinned button.flat.-panel-icon-button:hover {
  -gtk-icon-effect: highlight;
}

window#ValaPanel.background .unpinned button.flat.-panel-icon-button:hover, window#ValaPanel.background .unpinned button.flat.-panel-icon-button:active, window#ValaPanel.background .unpinned button.flat.-panel-icon-button:checked {
  box-shadow: inset 0 -2px {{ accent }};
  color: #ffffff;
}

window#ValaPanel.background .pinned button.flat.-panel-icon-button.running {
  border-radius: 0;
}

window#ValaPanel.background .pinned button.flat.-panel-icon-button.running > image {
  background-position: bottom center;
}

window#ValaPanel.background .pinned button.flat.-panel-icon-button.running:hover {
  -gtk-icon-effect: highlight;
}

window#ValaPanel.background .pinned button.flat.-panel-icon-button.running:hover, window#ValaPanel.background .pinned button.flat.-panel-icon-button.running:active, window#ValaPanel.background .pinned button.flat.-panel-icon-button.running:checked {
  box-shadow: inset 0 -2px {{ accent }};
  color: #ffffff;
}

.mate-panel-menu-bar menubar,
.mate-panel-menu-bar #PanelApplet-window-menu-applet-button,
menubar.-vala-panel-background,
menubar.-vala-panel-appmenu-private {
  background: none;
  border: none;
  box-shadow: none;
  padding: 0 0 0 0;
}

.mate-panel-menu-bar menubar > menuitem,
.mate-panel-menu-bar #PanelApplet-window-menu-applet-button > menuitem,
menubar.-vala-panel-background > menuitem,
menubar.-vala-panel-appmenu-private > menuitem {
  border-radius: 0;
  color: #d0c8c8;
  font-weight: normal;
}

.mate-panel-menu-bar menubar > menuitem:hover,
.mate-panel-menu-bar #PanelApplet-window-menu-applet-button > menuitem:hover,
menubar.-vala-panel-background > menuitem:hover,
menubar.-vala-panel-appmenu-private > menuitem:hover {
  color: #ffffff;
}

.mate-panel-menu-bar menubar > menuitem:disabled,
.mate-panel-menu-bar #PanelApplet-window-menu-applet-button > menuitem:disabled,
menubar.-vala-panel-background > menuitem:disabled,
menubar.-vala-panel-appmenu-private > menuitem:disabled {
  color: rgba(208, 200, 200, 0.45);
}

.mate-panel-menu-bar menubar > menuitem > window.background.popup > menu,
.mate-panel-menu-bar #PanelApplet-window-menu-applet-button > menuitem > window.background.popup > menu,
menubar.-vala-panel-background > menuitem > window.background.popup > menu,
menubar.-vala-panel-appmenu-private > menuitem > window.background.popup > menu {
  border-radius: 0 0 2px 2px;
}

UnityDecoration {
  -UnityDecoration-extents: 28px 1 1 1;
  -UnityDecoration-input-extents: 10px;
  -UnityDecoration-shadow-offset-x: 0px;
  -UnityDecoration-shadow-offset-y: 3px;
  -UnityDecoration-active-shadow-color: rgba(0, 0, 0, 0.2);
  -UnityDecoration-active-shadow-radius: 12px;
  -UnityDecoration-inactive-shadow-color: rgba(0, 0, 0, 0.07);
  -UnityDecoration-inactive-shadow-radius: 7px;
  -UnityDecoration-glow-size: 10px;
  -UnityDecoration-glow-color: {{ accent }};
  -UnityDecoration-title-indent: 10px;
  -UnityDecoration-title-fade: 35px;
  -UnityDecoration-title-alignment: 0.0;
}

UnityDecoration .top {
  border: 1px solid #090909;
  border-bottom-width: 0;
  border-radius: 4px 4px 0 0;
  padding: 1px 6px 0 6px;
  background-image: linear-gradient(to bottom, #1a1a1a, #1a1a1a);
  color: #d0c8c8;
  box-shadow: inset 0 1px #222222;
}

UnityDecoration .top:backdrop {
  border-bottom-width: 0;
  color: rgba(208, 200, 200, 0.7);
}

UnityDecoration .left, UnityDecoration .right, UnityDecoration .bottom,
UnityDecoration .left:backdrop, UnityDecoration .right:backdrop, UnityDecoration .bottom:backdrop {
  background-color: transparent;
  background-image: linear-gradient(to bottom, #090909, #090909);
}

UnityPanelWidget,
.unity-panel {
  background-image: linear-gradient(to bottom, #1b2224, #1b2224);
  color: white;
  box-shadow: none;
}

UnityPanelWidget:backdrop,
.unity-panel:backdrop {
  color: #d2cbcb;
}

.unity-panel.menubar.menuitem:hover,
.unity-panel.menubar .menuitem *:hover {
  border-radius: 0;
  color: #ffffff;
  background-image: linear-gradient(to bottom, {{ accent }}, {{ accent }});
  border-bottom: none;
}

.lightdm.menu {
  background-image: none;
  background-color: rgba(0, 0, 0, 0.45);
  border-color: rgba(255, 255, 255, 0.8);
  border-radius: 4px;
  padding: 1px;
  color: white;
}

.lightdm-combo .menu {
  background-color: #2f2f2f;
  border-radius: 0px;
  padding: 0px;
  color: white;
}

.lightdm.menu .menuitem *,
.lightdm.menu .menuitem.check:active,
.lightdm.menu .menuitem.radio:active {
  color: white;
}

.lightdm.menubar {
  color: rgba(255, 255, 255, 0.8);
  background-image: none;
  background-color: rgba(0, 0, 0, 0.5);
}

.lightdm.menubar > .menuitem {
  padding: 2px 6px;
}

.lightdm-combo.combobox-entry .button,
.lightdm-combo .cell,
.lightdm-combo .button,
.lightdm-combo .entry,
.lightdm.button,
.lightdm.entry {
  background-image: none;
  background-color: rgba(0, 0, 0, 0.3);
  border-color: rgba(255, 255, 255, 0.45);
  border-radius: 10px;
  padding: 7px;
  color: white;
  text-shadow: none;
}

.lightdm.button,
.lightdm.button:hover,
.lightdm.button:active,
.lightdm.button:active:focus,
.lightdm.entry,
.lightdm.entry:hover,
.lightdm.entry:active,
.lightdm.entry:active:focus {
  background-image: none;
  border-image: none;
}

.lightdm.button:focus,
.lightdm.entry:focus {
  border-color: rgba(255, 255, 255, 0.1);
  border-width: 1px;
  border-style: solid;
  color: white;
}

.lightdm.entry:selected {
  background-color: rgba(255, 255, 255, 0.8);
}

.lightdm.entry:active {
  -gtk-icon-source: -gtk-icontheme("process-working-symbolic");
  animation: dashentry_spinner 1s infinite linear;
}

.lightdm.option-button {
  padding: 2px;
  background: none;
  border: 0;
}

.lightdm.toggle-button {
  background: none;
  border-width: 0;
}

.lightdm.toggle-button.selected {
  background-color: rgba(0, 0, 0, 0.7);
  border-width: 1px;
}

@keyframes dashentry_spinner {
  to {
    -gtk-icon-transform: rotate(1turn);
  }
}

/****************
 * Mate Desktop *
 ****************/
.atril-window .primary-toolbar toolbar, .atril-window .primary-toolbar .inline-toolbar {
  background: none;
}

MsdOsdWindow.background.osd {
  border-radius: 2px;
  border: 1px solid rgba(21, 21, 21, 0.95);
}

MsdOsdWindow.background.osd .progressbar {
  background-color: {{ accent }};
  border: none;
  border-color: red;
  border-radius: 5px;
}

MsdOsdWindow.background.osd .trough {
  background-color: rgba(29, 29, 29, 0.95);
  border: none;
  border-radius: 5px;
}

.mate-panel-menu-bar, .mate-panel-menu-bar menubar,
panel-toplevel.background,
panel-toplevel.background menubar {
  background-color: #222222;
}

.mate-panel-menu-bar button label, .mate-panel-menu-bar button image,
.mate-panel-menu-bar button#tasklist-button label,
.mate-panel-menu-bar button#tasklist-button image,
panel-toplevel.background button label,
panel-toplevel.background button image,
panel-toplevel.background button#tasklist-button label,
panel-toplevel.background button#tasklist-button image {
  color: inherit;
}

.mate-panel-menu-bar .wnck-pager,
panel-toplevel.background .wnck-pager {
  color: #686464;
  background-color: #090909;
}

.mate-panel-menu-bar .wnck-pager:hover,
panel-toplevel.background .wnck-pager:hover {
  background-color: #2f2f2f;
}

.mate-panel-menu-bar .wnck-pager:selected,
panel-toplevel.background .wnck-pager:selected {
  color: #f8aeaa;
  background-color: {{ accent }};
}

.mate-panel-menu-bar na-tray-applet,
panel-toplevel.background na-tray-applet {
  -NaTrayApplet-icon-padding: 0;
  -NaTrayApplet-icon-size: 16px;
}

PanelToplevel.background {
  color: #d0c8c8;
  background-color: #222222;
}

#PanelWidget,
#PanelPlug,
#PanelApplet {
  color: #d0c8c8;
  background-color: #222222;
}

PanelSeparator {
  border-width: 0;
  background: none;
  background-image: none;
  color: white;
}

PanelToplevel.horizontal MatePanelAppletFrameDBus {
  background-image: linear-gradient(to right, transparent 2px, rgba(255, 255, 255, 0.1) 2px, rgba(255, 255, 255, 0.1) 3px, transparent 3px, transparent 4px, rgba(255, 255, 255, 0.1) 4px, rgba(255, 255, 255, 0.1) 5px, transparent 5px, transparent 7px);
  background-repeat: no-repeat;
  background-size: 7px 14px;
}

PanelToplevel.horizontal MatePanelAppletFrameDBus:dir(ltr) {
  background-position: left center;
}

PanelToplevel.horizontal MatePanelAppletFrameDBus:dir(rtl) {
  background-position: right center;
}

PanelToplevel.vertical MatePanelAppletFrameDBus {
  background-image: linear-gradient(to bottom, transparent 2px, rgba(255, 255, 255, 0.1) 2px, rgba(255, 255, 255, 0.1) 3px, transparent 3px, transparent 4px, rgba(255, 255, 255, 0.1) 4px, rgba(255, 255, 255, 0.1) 5px, transparent 5px, transparent 7px);
  background-repeat: no-repeat;
  background-size: 14px 7px;
  background-position: center top;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button {
  min-height: 4px;
  min-width: 4px;
  padding: 0;
  border-radius: 0;
  border-style: solid;
  border-color: rgba(255, 255, 255, 0.1);
  -gtk-outline-radius: 0;
  background-color: transparent;
  color: #d0c8c8;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:hover {
  background-color: transparent;
  color: #ffffff;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:active {
  background-color: transparent;
  color: #ffffff;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:disabled {
  color: rgba(208, 200, 200, 0.45);
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:checked {
  background-color: transparent;
  color: #ffffff;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button > image {
  padding: 0 4px;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:first-child:dir(ltr) {
  border-width: 0 1px 0 0;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:first-child:dir(rtl) {
  border-width: 0 0 0 1px;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:not(:first-child):dir(ltr) {
  border-width: 0 0 0 1px;
}

PanelToplevel.mate-panel-menu-bar > grid.horizontal > button:not(:first-child):dir(rtl) {
  border-width: 0 1px 0 0;
}

.mate-panel-menu-bar #clock-applet-button label {
  padding: 0 6px;
}

.mate-panel-menu-bar.vertical menubar > menuitem,
.mate-panel-menu-bar.vertical #PanelApplet-window-menu-applet-button > menuitem {
  padding: 4px 0;
}

.mate-panel-menu-bar.vertical menubar > menuitem:hover,
.mate-panel-menu-bar.vertical #PanelApplet-window-menu-applet-button > menuitem:hover {
  box-shadow: inset 2px 0 {{ accent }};
}

.mate-panel-menu-bar.vertical #tasklist-button:hover,
.mate-panel-menu-bar.vertical #clock-applet-button:hover,
.mate-panel-menu-bar.vertical #showdesktop-button:hover {
  box-shadow: inset 2px 0 rgba(240, 84, 76, 0.5);
}

.mate-panel-menu-bar.vertical #tasklist-button:checked, .mate-panel-menu-bar.vertical #tasklist-button:hover:checked,
.mate-panel-menu-bar.vertical #clock-applet-button:checked,
.mate-panel-menu-bar.vertical #clock-applet-button:hover:checked,
.mate-panel-menu-bar.vertical #showdesktop-button:checked,
.mate-panel-menu-bar.vertical #showdesktop-button:hover:checked {
  box-shadow: inset 2px 0 {{ accent }};
}

.mate-panel-menu-bar.vertical #clock-applet-button label {
  padding: 6px 0;
}

.mate-panel-menu-bar button.flat.toggle.brisk-button {
  padding: 0 4px;
  border-radius: 0;
  -gtk-outline-radius: 0;
  background-image: none;
  background-color: transparent;
  color: #d0c8c8;
  font-weight: 700;
}

.mate-panel-menu-bar button.flat.toggle.brisk-button:hover {
  background-image: none;
  color: #ffffff;
  box-shadow: inset 0 -2px rgba(255, 255, 255, 0.1);
}

.mate-panel-menu-bar button.flat.toggle.brisk-button:active {
  animation: none;
}

.mate-panel-menu-bar button.flat.toggle.brisk-button:checked {
  background-image: none;
  color: #ffffff;
  box-shadow: inset 0 -2px {{ accent }};
}

.mate-panel-menu-bar button.flat.toggle.brisk-button-vertical {
  padding: 0;
}

.mate-panel-menu-bar button.flat.toggle.brisk-button-vertical:hover {
  box-shadow: inset 2px 0 rgba(255, 255, 255, 0.1);
}

.mate-panel-menu-bar button.flat.toggle.brisk-button-vertical:checked {
  box-shadow: inset 2px 0 {{ accent }};
}

.brisk-menu entry {
  margin: 0.25rem;
}

.brisk-menu box.horizontal scrolledwindow:dir(ltr) {
  margin: 0.25rem 0.25rem 0.25rem 0;
}

.brisk-menu box.horizontal scrolledwindow:dir(rtl) {
  margin: 0.25rem 0 0.25rem 0.25rem;
}

.brisk-menu .categories-list:dir(ltr) {
  margin: 0.25rem 0 0.25rem 0.25rem;
}

.brisk-menu .categories-list:dir(rtl) {
  margin: 0.25rem 0.25rem 0.25rem 0;
}

.brisk-menu .categories-list button.flat {
  padding-top: unset;
  padding-bottom: unset;
  border-radius: 2px;
  -gtk-outline-radius: 0;
  font-weight: 500;
  transition-duration: 0.1s;
}

.brisk-menu .categories-list button.flat:checked {
  background-color: {{ accent }};
  color: #ffffff;
}

.brisk-menu .categories-list button.flat image {
  padding: 0.5rem 0;
}

.brisk-menu .categories-list button.flat label {
  padding-bottom: 0.04375rem;
}

.brisk-menu box.vertical > box.horizontal > box.vertical > separator.horizontal {
  min-height: 0;
  background-color: transparent;
}

.brisk-menu list.content-view.view {
  background-color: #262626;
}

.brisk-menu list.content-view.view row.activatable {
  padding: 0;
  background-image: none;
  transition-duration: 0s;
}

.brisk-menu list.content-view.view row.activatable > button.flat {
  padding-top: unset;
  padding-bottom: unset;
  border-radius: 0;
  -gtk-outline-radius: 0;
  font-weight: 400;
  transition-duration: 0s;
  border: none;
}

.brisk-menu list.content-view.view row.activatable > button.flat:hover {
  background-color: rgba(203, 191, 191, 0.06);
}

.brisk-menu list.content-view.view row.activatable > button.flat:active {
  background-color: rgba(203, 191, 191, 0.1);
  color: #cbbfbf;
}

.brisk-menu list.content-view.view row.activatable > button.flat > box.horizontal > image {
  padding: 0.33125rem 0;
}

.mate-panel-applet-slider {
  background-color: transparent;
}

.mate-panel-applet-slider > frame {
  border: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 2px;
  background-color: #222222;
}

.mate-panel-applet-slider > frame > border {
  border: unset;
}

.caja-notebook {
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

.caja-side-pane .frame {
  border-width: 1px 0 0;
}

.caja-notebook .frame {
  border-width: 0 0 1px;
}

.caja-desktop > widget.entry, .caja-desktop > widget.entry:focus {
  transition: none;
}

.caja-navigation-window toolbar#Toolbar.primary-toolbar, .caja-navigation-window #Toolbar.primary-toolbar.inline-toolbar {
  background-color: #1a1a1a;
  color: #d0c8c8;
}

window#MyControlCenter > frame > box.horizontal > widget > scrolledwindow.frame {
  border: none;
}

window#MyControlCenter > frame > box.horizontal > widget > scrolledwindow.frame:dir(ltr) {
  border-left: 1px solid #1a1a1a;
}

window#MyControlCenter > frame > box.horizontal > widget > scrolledwindow.frame:dir(rtl) {
  border-right: 1px solid #1a1a1a;
}

window#MyControlCenter > frame > box.horizontal > widget > scrolledwindow.frame > widget.view {
  all: unset;
  background-color: #222222;
}

.background:not(.csd) > box.horizontal > notebook.frame {
  border: none;
}

.background:not(.csd) > box.horizontal > notebook.frame > stack {
  border-width: 1px;
  border-style: solid;
  border-color: #222222;
  box-shadow: none;
}

.background:not(.csd) > box.horizontal > notebook.frame > stack:dir(ltr) {
  border-left-color: #1a1a1a;
}

.background:not(.csd) > box.horizontal > notebook.frame > stack:dir(rtl) {
  border-right-color: #1a1a1a;
}

.eom-window statusbar {
  margin: 0 -10px;
  padding: 0 0.41875rem;
  background-color: rgba(41, 41, 41, 0.95);
  color: #d0c8c8;
}

.pluma-window statusbar frame > border {
  border: none;
}

.pluma-window notebook > stack scrolledwindow {
  border-width: 0 0 1px 0;
}

#pluma-status-combo-button {
  min-height: 0;
  padding: 0;
  border-top: none;
  border-bottom: none;
  border-radius: 0;
}

.atril-window scrolledwindow.frame,
.xreader-window scrolledwindow.frame {
  border-style: solid none none;
}

.atril-window scrolledwindow.frame > .view,
.xreader-window scrolledwindow.frame > .view {
  transition: none;
}

.atril-window toolbar > toolbutton button.flat.image-button, .atril-window .inline-toolbar > toolbutton button.flat.image-button,
.xreader-window toolbar > toolbutton button.flat.image-button,
.xreader-window .inline-toolbar > toolbutton button.flat.image-button {
  border-radius: 2px;
  -gtk-outline-radius: 2px;
}

.atril-window.fullscreen.background > box.vertical,
.xreader-window.fullscreen.background > box.vertical {
  background-color: black;
  transition-duration: 0s;
}

.atril-window.fullscreen.background > box.vertical > toolbar.horizontal:not(.primary-toolbar), .atril-window.fullscreen.background > box.vertical > .inline-toolbar.horizontal:not(.primary-toolbar),
.xreader-window.fullscreen.background > box.vertical > toolbar.horizontal:not(.primary-toolbar),
.xreader-window.fullscreen.background > box.vertical > .inline-toolbar.horizontal:not(.primary-toolbar) {
  border-bottom-color: #1a1a1a;
}

.atril-window.fullscreen.background > box.vertical > paned.horizontal,
.xreader-window.fullscreen.background > box.vertical > paned.horizontal {
  background-color: #222222;
}

MsdOsdWindow.background.osd {
  border-radius: 2px;
  border: 1px solid rgba(11, 11, 11, 0.42);
  background-color: rgba(41, 41, 41, 0.95);
  box-shadow: none;
}

MsdOsdWindow.background.osd image {
  color: #d0c8c8;
}

MsdOsdWindow.background.osd .trough {
  border-radius: 0;
  border: none;
  background-color: rgba(208, 200, 200, 0.2);
}

MsdOsdWindow.background.osd .progressbar {
  border-radius: 0;
  border: none;
  background-color: #3498db;
}

.slate-notification {
  border-radius: 2px;
}

.slate-notification-window .drop-shadow {
  margin: 4px 6px 10px;
  border-radius: 2px;
}

/******************
 * Budgie Desktop *
 ******************/
.drop-shadow button, .raven .raven-header:not(.top) button, .budgie-popover:not(.budgie-menu) button.flat:not(.image-button), .budgie-settings-window buttonbox.inline-toolbar button {
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.drop-shadow button:hover, .raven .raven-header:not(.top) button:hover, .budgie-popover:not(.budgie-menu) button.flat:hover:not(.image-button), .budgie-settings-window buttonbox.inline-toolbar button:hover {
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  transition-duration: 350ms;
}

.drop-shadow button:checked, .raven .raven-header:not(.top) button:checked, .budgie-popover:not(.budgie-menu) button.flat:checked:not(.image-button), .budgie-settings-window buttonbox.inline-toolbar button:checked, .drop-shadow button:active, .raven .raven-header:not(.top) button:active, .budgie-popover:not(.budgie-menu) button.flat:active:not(.image-button), .budgie-settings-window buttonbox.inline-toolbar button:active {
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.budgie-container {
  background-color: transparent;
}

.budgie-settings-window buttonbox.inline-toolbar {
  border-style: none none solid;
}

.budgie-popover {
  margin: 0;
  padding: 0;
  border-color: rgba(0, 0, 0, 0.25);
  border-radius: 2px;
  background-color: #222222;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.3), 0 2px 3px 0 rgba(0, 0, 0, 0.3), 0 0 0 1px rgba(0, 0, 0, 0.25);
}

.budgie-popover .container {
  padding: 2px;
}

.budgie-popover border {
  border: none;
}

.budgie-popover list {
  background-color: transparent;
}

.budgie-popover row {
  padding: 0;
  background-color: transparent;
}

.budgie-popover row:hover {
  box-shadow: none;
  background-color: transparent;
}

.budgie-popover:not(.budgie-menu) button.flat:not(.image-button) {
  min-height: 28px;
  padding: 0 8px;
  color: rgba(203, 191, 191, 0.85);
  font-weight: normal;
  border: none;
}

.budgie-popover:not(.budgie-menu) button.flat:not(.image-button):hover {
  background-color: rgba(203, 191, 191, 0.12);
}

.budgie-popover:not(.budgie-menu) button.flat:not(.image-button):checked, .budgie-popover:not(.budgie-menu) button.flat:not(.image-button):active {
  background-color: rgba(203, 191, 191, 0.22);
  color: #cbbfbf;
}

.budgie-popover:not(.budgie-menu) button.flat:not(.image-button):disabled {
  color: rgba(203, 191, 191, 0.45);
}

.budgie-popover.budgie-menu .container {
  padding: 0;
}

.budgie-popover.user-menu .container {
  padding: 8px;
}

.budgie-popover.user-menu separator {
  margin: 4px 0;
  background-color: rgba(0, 0, 0, 0.25);
}

.budgie-popover.sound-popover separator {
  margin: 3px 0;
  background-color: rgba(0, 0, 0, 0.25);
}

.budgie-popover.night-light-indicator .container {
  padding: 8px;
}

.budgie-popover.places-menu .container {
  padding: 8px;
}

.budgie-popover.places-menu .places-list:not(.always-expand) {
  margin-top: 4px;
  padding-top: 4px;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

.budgie-popover.places-menu .alternative-label {
  padding: 3px;
  font-size: 15px;
}

.budgie-popover.workspace-popover .container {
  padding: 2px 8px 8px;
}

.budgie-popover.workspace-popover separator {
  margin: 4px 0;
}

.budgie-popover.workspace-popover flowboxchild {
  padding: 0;
}

window.budgie-popover:not(.csd) > frame.container {
  margin: 0 -1px -1px;
}

.bottom window.budgie-popover:not(.csd) > frame.container {
  padding: 2px 0 2px;
}

window.budgie-popover:not(.csd) > frame.container,
window.budgie-popover:not(.csd) > frame.container > border {
  border-style: none;
}

.workspace-switcher .workspace-layout {
  border: 0 solid rgba(255, 255, 255, 0.12);
}

.top .workspace-switcher .workspace-layout:dir(ltr), .bottom .workspace-switcher .workspace-layout:dir(ltr) {
  border-left-width: 1px;
}

.top .workspace-switcher .workspace-layout:dir(rtl), .bottom .workspace-switcher .workspace-layout:dir(rtl) {
  border-right-width: 1px;
}

.left .workspace-switcher .workspace-layout, .right .workspace-switcher .workspace-layout {
  border-top-width: 1px;
}

.workspace-switcher .workspace-item,
.workspace-switcher .workspace-add-button {
  border: 0 solid rgba(255, 255, 255, 0.12);
}

.top .workspace-switcher .workspace-item:dir(ltr), .bottom .workspace-switcher .workspace-item:dir(ltr), .top .workspace-switcher .workspace-add-button:dir(ltr), .bottom .workspace-switcher .workspace-add-button:dir(ltr) {
  border-right-width: 1px;
}

.top .workspace-switcher .workspace-item:dir(rtl), .bottom .workspace-switcher .workspace-item:dir(rtl), .top .workspace-switcher .workspace-add-button:dir(rtl), .bottom .workspace-switcher .workspace-add-button:dir(rtl) {
  border-left-width: 1px;
}

.left .workspace-switcher .workspace-item, .right .workspace-switcher .workspace-item, .left .workspace-switcher .workspace-add-button, .right .workspace-switcher .workspace-add-button {
  border-bottom-width: 1px;
}

.workspace-switcher .workspace-item {
  transition: all 0.2s cubic-bezier(0, 0, 0.2, 1);
}

.workspace-switcher .workspace-item.current-workspace {
  background-color: rgba(255, 255, 255, 0.12);
}

.workspace-switcher .workspace-add-button {
  background-color: transparent;
}

.workspace-switcher .workspace-add-button:hover {
  box-shadow: none;
}

.workspace-switcher .workspace-add-button:active {
  background-image: none;
}

.workspace-switcher .workspace-add-button:active image {
  margin: 1px 0 -1px;
}

.budgie-panel .workspace-switcher .workspace-icon-button {
  min-height: 24px;
  min-width: 24px;
  padding: 0;
  border-radius: 2px;
}

.budgie-menu.background {
  padding: 0;
  background-color: #262626;
}

.budgie-menu scrollbar,
.budgie-menu entry.search {
  background-color: transparent;
}

.budgie-menu entry.search {
  border: none;
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 0;
  box-shadow: none;
  font-size: 120%;
}

.budgie-menu .categories:dir(ltr) {
  border-bottom-left-radius: 2px;
}

.budgie-menu .categories:dir(rtl) {
  border-bottom-right-radius: 2px;
}

.budgie-menu button {
  min-height: 32px;
  padding: 0 8px;
  border-radius: 0;
  color: #cbbfbf;
  font-weight: normal;
  border: none;
}

.budgie-menu button:disabled {
  color: rgba(203, 191, 191, 0.45);
}

.budgie-menu button:checked:disabled {
  background-color: {{ accent }};
}

.budgie-menu row {
  padding: 0;
}

.budgie-menu row:hover {
  box-shadow: none;
}

popover.background.user-menu {
  padding: 8px;
}

popover.background.user-menu .content-box {
  background-color: transparent;
}

popover.background.user-menu separator {
  margin: 4px 0;
  background-color: rgba(0, 0, 0, 0.25);
}

popover.background.user-menu row {
  padding: 0;
  box-shadow: none;
  background-image: none;
}

popover.background.places-menu {
  padding: 8px;
}

popover.background.places-menu .name-button.text-button {
  padding-left: 8px;
  padding-right: 8px;
}

popover.background.places-menu .name-button.text-button image:dir(ltr) {
  margin-right: 3px;
}

popover.background.places-menu .name-button.text-button image:dir(rtl) {
  margin-left: 3px;
}

popover.background.places-menu .places-section-header > image:dir(ltr) {
  margin: 0 -2px 0 5px;
}

popover.background.places-menu .places-section-header > image:dir(rtl) {
  margin: 0 5px 0 -2px;
}

popover.background.places-menu .places-list {
  margin-top: 4px;
  padding-top: 4px;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  background-color: transparent;
}

popover.background.places-menu row {
  padding: 0;
  box-shadow: none;
  background-image: none;
}

.budgie-panel {
  transition: background-color 0.2s cubic-bezier(0, 0, 0.2, 1);
  background-color: #222222;
  color: #d0c8c8;
  font-weight: 500;
}

.budgie-panel.transparent {
  background-color: rgba(34, 34, 34, 0.85);
}

.budgie-panel button {
  min-height: 16px;
  min-width: 16px;
  padding: 0;
  border-radius: 0;
  color: #d0c8c8;
  border: none;
  background: none;
}

.budgie-panel button:hover {
  color: white;
  background-color: rgba(208, 200, 200, 0.15);
}

.budgie-panel button:active {
  color: white;
  background-color: rgba(208, 200, 200, 0.1);
}

.budgie-panel button:checked {
  color: white;
  background-color: rgba(208, 200, 200, 0.12);
}

.budgie-panel button:checked:disabled {
  color: rgba(255, 255, 255, 0.5);
  background-color: rgba(208, 200, 200, 0.06);
}

.budgie-panel button:disabled {
  color: rgba(208, 200, 200, 0.5);
  background: none;
}

.budgie-panel.horizontal button {
  padding: 0 4px;
}

.budgie-panel.vertical button {
  padding: 4px 0;
}

.budgie-panel separator {
  background-color: rgba(0, 0, 0, 0.25);
}

.budgie-panel .alert {
  color: #db5b5b;
}

.budgie-panel.vertical #tasklist-button {
  min-height: 32px;
}

.budgie-panel button.flat.launcher {
  padding: 0;
}

.budgie-panel button.flat.launcher:not(:checked) {
  color: #d0c8c8;
}

.budgie-panel button.flat.launcher:not(:checked):hover, .budgie-panel button.flat.launcher:not(:checked):active {
  color: #ffffff;
}

.budgie-panel button.flat.launcher:not(:checked):disabled {
  color: rgba(208, 200, 200, 0.5);
}

#tasklist-button {
  padding: 0 4px;
}

.top .budgie-panel button.flat.launcher, .budgie-panel .top button.flat.launcher, .top #tasklist-button {
  border-image: radial-gradient(circle closest-corner at center calc(1px), {{ accent }} 0%, transparent 0%) 0 0 0 0/0 0 0 0;
}

.top .budgie-panel button.flat.launcher:checked, .budgie-panel .top button.flat.launcher:checked, .top #tasklist-button:checked {
  border-image: radial-gradient(circle closest-corner at center calc(1px), {{ accent }} 100%, transparent 0%) 3 0 0 0/3px 0 0 0;
}

.bottom .budgie-panel button.flat.launcher, .budgie-panel .bottom button.flat.launcher, .bottom #tasklist-button {
  border-image: radial-gradient(circle closest-corner at center calc(100% - 1px), {{ accent }} 0%, transparent 0%) 0 0 0 0/0 0 0 0;
}

.bottom .budgie-panel button.flat.launcher:checked, .budgie-panel .bottom button.flat.launcher:checked, .bottom #tasklist-button:checked {
  border-image: radial-gradient(circle closest-corner at center calc(100% - 1px), {{ accent }} 100%, transparent 0%) 0 0 3 0/0 0 3px 0;
}

.left .budgie-panel button.flat.launcher, .budgie-panel .left button.flat.launcher, .left #tasklist-button {
  border-image: radial-gradient(circle closest-corner at calc(1px) center, {{ accent }} 0%, transparent 0%) 0 0 0 0/0 0 0 0;
}

.left .budgie-panel button.flat.launcher:checked, .budgie-panel .left button.flat.launcher:checked, .left #tasklist-button:checked {
  border-image: radial-gradient(circle closest-corner at calc(1px) center, {{ accent }} 100%, transparent 0%) 0 0 0 3/0 0 0 3px;
}

.right .budgie-panel button.flat.launcher, .budgie-panel .right button.flat.launcher, .right #tasklist-button {
  border-image: radial-gradient(circle closest-corner at calc(100% - 1px) center, {{ accent }} 0%, transparent 0%) 0 0 0 0/0 0 0 0;
}

.right .budgie-panel button.flat.launcher:checked, .budgie-panel .right button.flat.launcher:checked, .right #tasklist-button:checked {
  border-image: radial-gradient(circle closest-corner at calc(100% - 1px) center, {{ accent }} 100%, transparent 0%) 0 3 0 0/0 3px 0 0;
}

.budgie-panel button.flat.launcher {
  min-width: 16px;
  min-height: 16px;
  padding: 0;
  border-radius: 0;
  border: none;
  background-position: center center;
}

.budgie-panel button.flat.launcher > image {
  opacity: 0.87;
}

.budgie-panel button.flat.launcher:hover {
  -gtk-icon-effect: highlight;
}

.budgie-panel button.flat.launcher:hover > image {
  opacity: 1.0;
}

.budgie-panel button.flat.launcher:active > image {
  opacity: 1.0;
}

.budgie-panel button.flat.launcher:checked:hover {
  -gtk-icon-effect: highlight;
}

.budgie-panel button.flat.launcher:checked > image {
  opacity: 1.0;
}


.unpinned button.flat.launcher:hover,
.pinned button.flat.launcher.running:hover,
.pinned button.launcher.running.sidebar-button:hover {
  -gtk-icon-effect: highlight;
}


.unpinned button.flat.launcher > image,
.pinned button.flat.launcher.running > image,
.pinned button.launcher.running.sidebar-button > image {
  background-repeat: no-repeat;
  opacity: 1.0;
}


.unpinned button.flat.launcher:checked > image,
.pinned button.flat.launcher.running:checked > image,
.pinned button.launcher.running.sidebar-button:checked > image {
  background-image: none;
}

.top .budgie-panel .unpinned button.flat.launcher > image,
.top .budgie-panel .pinned button.flat.launcher.running > image,
.top .budgie-panel .pinned button.launcher.running.sidebar-button > image {
  background-size: 6px 3px;
  background-position: top center;
  background-image: image({{ accent }});
}

.top .budgie-panel .unpinned button.flat.launcher:checked > image,
.top .budgie-panel .pinned button.flat.launcher.running:checked > image,
.top .budgie-panel .pinned button.launcher.running.sidebar-button:checked > image {
  background-image: none;
}

.bottom .budgie-panel .unpinned button.flat.launcher > image,
.bottom .budgie-panel .pinned button.flat.launcher.running > image,
.bottom .budgie-panel .pinned button.launcher.running.sidebar-button > image {
  background-size: 6px 3px;
  background-position: bottom center;
  background-image: image({{ accent }});
}

.bottom .budgie-panel .unpinned button.flat.launcher:checked > image,
.bottom .budgie-panel .pinned button.flat.launcher.running:checked > image,
.bottom .budgie-panel .pinned button.launcher.running.sidebar-button:checked > image {
  background-image: none;
}

.left .budgie-panel .unpinned button.flat.launcher > image,
.left .budgie-panel .pinned button.flat.launcher.running > image,
.left .budgie-panel .pinned button.launcher.running.sidebar-button > image {
  background-size: 3px 6px;
  background-position: left center;
  background-image: image({{ accent }});
}

.left .budgie-panel .unpinned button.flat.launcher:checked > image,
.left .budgie-panel .pinned button.flat.launcher.running:checked > image,
.left .budgie-panel .pinned button.launcher.running.sidebar-button:checked > image {
  background-image: none;
}

.right .budgie-panel .unpinned button.flat.launcher > image,
.right .budgie-panel .pinned button.flat.launcher.running > image,
.right .budgie-panel .pinned button.launcher.running.sidebar-button > image {
  background-size: 3px 6px;
  background-position: right center;
  background-image: image({{ accent }});
}

.right .budgie-panel .unpinned button.flat.launcher:checked > image,
.right .budgie-panel .pinned button.flat.launcher.running:checked > image,
.right .budgie-panel .pinned button.launcher.running.sidebar-button:checked > image {
  background-image: none;
}

box:not(.unpinned):not(.pinned) > revealer > button.flat.launcher {
  border-image: none;
}

frame.raven-frame > border {
  border: none;
  box-shadow: none;
}

.top .shadow-block {
  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.23), rgba(0, 0, 0, 0.08), transparent);
}

.bottom .shadow-block {
  background-image: linear-gradient(to top, rgba(0, 0, 0, 0.23), rgba(0, 0, 0, 0.08), transparent);
}

.left .shadow-block {
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.23), rgba(0, 0, 0, 0.08), transparent);
}

.right .shadow-block {
  background-image: linear-gradient(to left, rgba(0, 0, 0, 0.23), rgba(0, 0, 0, 0.08), transparent);
}

.raven {
  background-color: #222222;
}

.raven > box {
  margin-bottom: -10px;
}

.raven > stack {
  margin-bottom: -10px;
}

.raven stackswitcher {
  padding: 0 8px 12px 8px;
}

.raven .raven-header {
  min-height: 36px;
  padding: 3px;
}

.raven .raven-header:not(.top) {
  margin-top: -6px;
}

.raven .raven-header:not(.top) button {
  min-height: 28px;
  min-width: 28px;
  margin: 0;
  padding: 0;
}

.raven .raven-header:not(.top) button.image-button {
  border-radius: 100px;
  -gtk-outline-radius: 100px;
}

.raven .raven-header.top {
  padding: 2px 12px;
  background-color: #222222;
  color: #d0c8c8;
}

.raven .raven-header.top stackswitcher {
  padding: 0;
  margin: 0;
}

.raven .raven-header.top stackswitcher button {
  margin: 4px 0;
  padding: 2px 16px;
  min-height: 16px;
  border: none;
  background-color: #3c3c3c;
  color: #d0c8c8;
}

.raven .raven-header.top stackswitcher button:hover {
  background-color: #484848;
  box-shadow: none;
}

.raven .raven-header.top stackswitcher button:active, .raven .raven-header.top stackswitcher button:checked {
  color: #ffffff;
  border-color: transparent;
  background-color: {{ accent }};
}

.raven .raven-header.top stackswitcher button:disabled {
  color: rgba(208, 200, 200, 0.4);
}

.raven .raven-header.top stackswitcher button:disabled label {
  color: rgba(208, 200, 200, 0.4);
}

.raven .raven-header.top button.image-button:dir(ltr) {
  margin-right: 2px;
}

.raven .raven-header.top button.image-button:dir(rtl) {
  margin-left: 2px;
}

.raven .raven-header.top > image {
  margin: 0 8px;
}

.raven .raven-header.top > label {
  margin: 0 -8px;
  font-weight: bold;
}

.raven .raven-header.bottom {
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

.raven viewport.frame .raven-header {
  margin-top: -8px;
}

.raven .expander-button {
  border-radius: 100px;
  -gtk-outline-radius: 100px;
}

.raven .raven-background {
  border-style: solid none;
  border-width: 1px;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #262626;
}

.raven .raven-background.middle {
  border-bottom-style: none;
}

.raven .raven-background.frame {
  border-style: solid none;
}

.raven .raven-background > overlay > widget > image {
  color: alpha(currentColor,0.12);
}

.raven .raven-background grid > label:first-child {
  min-height: 26px;
}

.raven scrolledwindow.raven-background {
  border-bottom-style: none;
}

.raven .raven-header.top + .raven-background {
  border-style: none;
  background-color: {{ accent }};
  color: #ffffff;
}

.raven .raven-header.top + .raven-background stackswitcher button {
  margin: -4px 0;
}

.raven .powerstrip button.image-button {
  min-height: 28px;
  min-width: 28px;
  margin: 0 4px;
  padding: 6px;
}

.raven .option-subtitle {
  font-size: smaller;
}

calendar.raven-calendar {
  margin: 2px 0;
  padding: 2px;
  border-style: none;
  background-color: transparent;
}

calendar.raven-calendar:selected {
  border-radius: 3px;
  background-color: {{ accent }};
}

.raven-mpris {
  background-color: rgba(0, 0, 0, 0.5);
  color: #ffffff;
}

.raven-mpris label {
  min-height: 24px;
}

.raven-mpris button.image-button {
  padding: 8px 7px;
  border: none;
  border-radius: 100px;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame {
  padding: 0;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame list {
  background-color: transparent;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable {
  margin-left: -8px;
  margin-right: -2px;
  background-color: transparent;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable > grid > *,
box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable > box.vertical * {
  color: #cbbfbf;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable image {
  padding-left: 8px;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable button.image-button {
  margin: 8px;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable button.image-button image {
  padding: 0;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable button.image-button:active image, box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable button.image-button:checked image {
  color: white;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable list {
  border-radius: 2px;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable list > row.activatable {
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable list > row.activatable:last-child {
  border-bottom: none;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable list > row.activatable:selected {
  background-color: rgba(203, 191, 191, 0.06);
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable list > row.activatable label {
  padding: 0 16px;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable list > row.activatable button.image-button image {
  padding: 0;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected {
  background-color: rgba(240, 84, 76, 0.75);
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected > grid > *,
box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected > box.vertical * {
  color: #ffffff;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected button.image-button {
  border: none;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected button.image-button:hover {
  background-color: rgba(255, 255, 255, 0.25);
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected button.image-button:active, box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected button.image-button:checked {
  background-color: rgba(255, 255, 255, 0.35);
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected list {
  border: 1px solid rgba(255, 255, 255, 0.12);
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected list > row.activatable {
  border-bottom: 1px solid rgba(255, 255, 255, 0.12);
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected list > row.activatable:last-child {
  border-bottom: none;
}

box.vertical > stack > box.vertical > .raven-background > viewport.frame > list > row.activatable:selected list > row.activatable:selected {
  background-color: rgba(240, 84, 76, 0.65);
}

.slate-notification-window,
.budgie-notification-window,
.budgie-switcher-window,
.budgie-osd-window {
  background-color: transparent;
  background-image: none;
  border-radius: 2px;
}

.slate-notification-window button,
.budgie-notification-window button,
.budgie-switcher-window button,
.budgie-osd-window button {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.42);
}

.slate-notification-window button:hover,
.budgie-notification-window button:hover,
.budgie-switcher-window button:hover,
.budgie-osd-window button:hover {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(115, 115, 115, 0.52);
}

.slate-notification-window button:active, .slate-notification-window button:checked,
.budgie-notification-window button:active,
.budgie-switcher-window button:active,
.budgie-osd-window button:active,
.budgie-notification-window button:checked,
.budgie-switcher-window button:checked,
.budgie-osd-window button:checked {
  color: #ffffff;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: {{ accent }};
}

.slate-notification-window button:disabled,
.budgie-notification-window button:disabled,
.budgie-switcher-window button:disabled,
.budgie-osd-window button:disabled {
  color: #5b5959;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.85);
}

.slate-notification-window .linked:not(.vertical) > entry + entry,
.budgie-notification-window .linked:not(.vertical) > entry + entry,
.budgie-switcher-window .linked:not(.vertical) > entry + entry,
.budgie-osd-window .linked:not(.vertical) > entry + entry {
  border-left-color: rgba(0, 0, 0, 0.3);
}

.slate-notification-window .linked:not(.vertical) > entry.error + entry,
.slate-notification-window .linked:not(.vertical) > entry + entry.error,
.budgie-notification-window .linked:not(.vertical) > entry.error + entry,
.budgie-switcher-window .linked:not(.vertical) > entry.error + entry,
.budgie-osd-window .linked:not(.vertical) > entry.error + entry,
.budgie-notification-window .linked:not(.vertical) > entry + entry.error,
.budgie-switcher-window .linked:not(.vertical) > entry + entry.error,
.budgie-osd-window .linked:not(.vertical) > entry + entry.error {
  border-left-color: #FC4138;
}

.slate-notification-window .linked:not(.vertical) > entry.warning + entry,
.slate-notification-window .linked:not(.vertical) > entry + entry.warning,
.budgie-notification-window .linked:not(.vertical) > entry.warning + entry,
.budgie-switcher-window .linked:not(.vertical) > entry.warning + entry,
.budgie-osd-window .linked:not(.vertical) > entry.warning + entry,
.budgie-notification-window .linked:not(.vertical) > entry + entry.warning,
.budgie-switcher-window .linked:not(.vertical) > entry + entry.warning,
.budgie-osd-window .linked:not(.vertical) > entry + entry.warning {
  border-left-color: #F27835;
}

.slate-notification-window .linked:not(.vertical) > entry.error + entry.warning,
.slate-notification-window .linked:not(.vertical) > entry.warning + entry.error,
.budgie-notification-window .linked:not(.vertical) > entry.error + entry.warning,
.budgie-switcher-window .linked:not(.vertical) > entry.error + entry.warning,
.budgie-osd-window .linked:not(.vertical) > entry.error + entry.warning,
.budgie-notification-window .linked:not(.vertical) > entry.warning + entry.error,
.budgie-switcher-window .linked:not(.vertical) > entry.warning + entry.error,
.budgie-osd-window .linked:not(.vertical) > entry.warning + entry.error {
  border-left-color: #f75d37;
}

.slate-notification-window .linked:not(.vertical) > entry + entry:focus:not(:last-child),
.slate-notification-window .linked:not(.vertical) > entry + entry:focus:last-child,
.budgie-notification-window .linked:not(.vertical) > entry + entry:focus:not(:last-child),
.budgie-switcher-window .linked:not(.vertical) > entry + entry:focus:not(:last-child),
.budgie-osd-window .linked:not(.vertical) > entry + entry:focus:not(:last-child),
.budgie-notification-window .linked:not(.vertical) > entry + entry:focus:last-child,
.budgie-switcher-window .linked:not(.vertical) > entry + entry:focus:last-child,
.budgie-osd-window .linked:not(.vertical) > entry + entry:focus:last-child {
  border-left-color: {{ accent }};
}

.slate-notification-window .linked:not(.vertical) > entry:focus:not(:only-child) + entry,
.slate-notification-window .linked:not(.vertical) > entry:focus:not(:only-child) + button,
.slate-notification-window .linked:not(.vertical) > entry:focus:not(:only-child) + combobox > box > button.combo,
.budgie-notification-window .linked:not(.vertical) > entry:focus:not(:only-child) + entry,
.budgie-switcher-window .linked:not(.vertical) > entry:focus:not(:only-child) + entry,
.budgie-osd-window .linked:not(.vertical) > entry:focus:not(:only-child) + entry,
.budgie-notification-window .linked:not(.vertical) > entry:focus:not(:only-child) + button,
.budgie-switcher-window .linked:not(.vertical) > entry:focus:not(:only-child) + button,
.budgie-osd-window .linked:not(.vertical) > entry:focus:not(:only-child) + button,
.budgie-notification-window .linked:not(.vertical) > entry:focus:not(:only-child) + combobox > box > button.combo,
.budgie-switcher-window .linked:not(.vertical) > entry:focus:not(:only-child) + combobox > box > button.combo,
.budgie-osd-window .linked:not(.vertical) > entry:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: {{ accent }};
}

.slate-notification-window .linked:not(.vertical) > entry + entry:drop(active):not(:last-child),
.slate-notification-window .linked:not(.vertical) > entry + entry:drop(active):last-child,
.budgie-notification-window .linked:not(.vertical) > entry + entry:drop(active):not(:last-child),
.budgie-switcher-window .linked:not(.vertical) > entry + entry:drop(active):not(:last-child),
.budgie-osd-window .linked:not(.vertical) > entry + entry:drop(active):not(:last-child),
.budgie-notification-window .linked:not(.vertical) > entry + entry:drop(active):last-child,
.budgie-switcher-window .linked:not(.vertical) > entry + entry:drop(active):last-child,
.budgie-osd-window .linked:not(.vertical) > entry + entry:drop(active):last-child {
  border-left-color: #F08437;
}

.slate-notification-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + entry,
.slate-notification-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + button,
.slate-notification-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + combobox > box > button.combo,
.budgie-notification-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + entry,
.budgie-switcher-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + entry,
.budgie-osd-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + entry,
.budgie-notification-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + button,
.budgie-switcher-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + button,
.budgie-osd-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + button,
.budgie-notification-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + combobox > box > button.combo,
.budgie-switcher-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + combobox > box > button.combo,
.budgie-osd-window .linked:not(.vertical) > entry:drop(active):not(:only-child) + combobox > box > button.combo {
  border-left-color: #F08437;
}

.slate-notification-window .linked:not(.vertical) > entry + entry.warning:focus:not(:last-child),
.slate-notification-window .linked:not(.vertical) > entry + entry.warning:focus:last-child,
.budgie-notification-window .linked:not(.vertical) > entry + entry.warning:focus:not(:last-child),
.budgie-switcher-window .linked:not(.vertical) > entry + entry.warning:focus:not(:last-child),
.budgie-osd-window .linked:not(.vertical) > entry + entry.warning:focus:not(:last-child),
.budgie-notification-window .linked:not(.vertical) > entry + entry.warning:focus:last-child,
.budgie-switcher-window .linked:not(.vertical) > entry + entry.warning:focus:last-child,
.budgie-osd-window .linked:not(.vertical) > entry + entry.warning:focus:last-child {
  border-left-color: #F27835;
}

.slate-notification-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + entry,
.slate-notification-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + button,
.slate-notification-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + combobox > box > button.combo,
.budgie-notification-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + entry,
.budgie-switcher-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + entry,
.budgie-osd-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + entry,
.budgie-notification-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + button,
.budgie-switcher-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + button,
.budgie-osd-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + button,
.budgie-notification-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + combobox > box > button.combo,
.budgie-switcher-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + combobox > box > button.combo,
.budgie-osd-window .linked:not(.vertical) > entry.warning:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: #F27835;
}

.slate-notification-window .linked:not(.vertical) > entry + entry.error:focus:not(:last-child),
.slate-notification-window .linked:not(.vertical) > entry + entry.error:focus:last-child,
.budgie-notification-window .linked:not(.vertical) > entry + entry.error:focus:not(:last-child),
.budgie-switcher-window .linked:not(.vertical) > entry + entry.error:focus:not(:last-child),
.budgie-osd-window .linked:not(.vertical) > entry + entry.error:focus:not(:last-child),
.budgie-notification-window .linked:not(.vertical) > entry + entry.error:focus:last-child,
.budgie-switcher-window .linked:not(.vertical) > entry + entry.error:focus:last-child,
.budgie-osd-window .linked:not(.vertical) > entry + entry.error:focus:last-child {
  border-left-color: #FC4138;
}

.slate-notification-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + entry,
.slate-notification-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + button,
.slate-notification-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + combobox > box > button.combo,
.budgie-notification-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + entry,
.budgie-switcher-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + entry,
.budgie-osd-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + entry,
.budgie-notification-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + button,
.budgie-switcher-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + button,
.budgie-osd-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + button,
.budgie-notification-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + combobox > box > button.combo,
.budgie-switcher-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + combobox > box > button.combo,
.budgie-osd-window .linked:not(.vertical) > entry.error:focus:not(:only-child) + combobox > box > button.combo {
  border-left-color: #FC4138;
}

.slate-notification-window .linked:not(.vertical) > button:active + entry,
.slate-notification-window .linked:not(.vertical) > button:checked + entry,
.budgie-notification-window .linked:not(.vertical) > button:active + entry,
.budgie-switcher-window .linked:not(.vertical) > button:active + entry,
.budgie-osd-window .linked:not(.vertical) > button:active + entry,
.budgie-notification-window .linked:not(.vertical) > button:checked + entry,
.budgie-switcher-window .linked:not(.vertical) > button:checked + entry,
.budgie-osd-window .linked:not(.vertical) > button:checked + entry {
  border-left-color: {{ accent }};
}

.slate-notification-window .linked:not(.vertical) > button + button,
.budgie-notification-window .linked:not(.vertical) > button + button,
.budgie-switcher-window .linked:not(.vertical) > button + button,
.budgie-osd-window .linked:not(.vertical) > button + button {
  border-left-style: none;
}

.slate-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.slate-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action),
.budgie-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.budgie-switcher-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.budgie-osd-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.budgie-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action),
.budgie-switcher-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action),
.budgie-osd-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action) {
  box-shadow: inset 1px 0 rgba(11, 11, 11, 0.42);
}

.slate-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.slate-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover),
.budgie-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.budgie-switcher-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.budgie-osd-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.budgie-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover),
.budgie-switcher-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover),
.budgie-osd-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):not(:hover) {
  box-shadow: inset 1px 0 rgba(11, 11, 11, 0.42);
}

.slate-notification-window .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.slate-notification-window .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.slate-notification-window .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.slate-notification-window .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.slate-notification-window .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.slate-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:disabled,
.slate-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.slate-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:hover,
.slate-notification-window .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.slate-notification-window .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.slate-notification-window .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.slate-notification-window .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.slate-notification-window .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.slate-notification-window .linked:not(.vertical),
.budgie-notification-window .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-switcher-window .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-osd-window .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-notification-window .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-switcher-window .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-osd-window .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-notification-window .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-switcher-window .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-osd-window .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-notification-window .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-switcher-window .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-osd-window .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover,
.budgie-notification-window .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.budgie-switcher-window .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.budgie-osd-window .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):hover:not(:only-child),
.budgie-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:disabled,
.budgie-switcher-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:disabled,
.budgie-osd-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:disabled,
.budgie-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-switcher-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-osd-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-notification-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:hover,
.budgie-switcher-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:hover,
.budgie-osd-window .linked:not(.vertical) > button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):first-child:hover,
.budgie-notification-window .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-switcher-window .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-osd-window .linked:not(.vertical) > button:active + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-notification-window .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-switcher-window .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-osd-window .linked:not(.vertical) > button:checked + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-notification-window .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-switcher-window .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-osd-window .linked:not(.vertical) > button.suggested-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-notification-window .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-switcher-window .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-osd-window .linked:not(.vertical) > button.destructive-action + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled,
.budgie-notification-window .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.budgie-switcher-window .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.budgie-osd-window .linked:not(.vertical) > entry + button:not(:checked):not(:active):not(.suggested-action):not(.destructive-action):disabled:not(:only-child),
.budgie-notification-window .linked:not(.vertical),
.budgie-switcher-window .linked:not(.vertical),
.budgie-osd-window .linked:not(.vertical) {
  box-shadow: none;
}

.slate-notification .notification-title,
.budgie-notification .notification-title,
.budgie-switcher .notification-title {
  font-size: 120%;
}

.budgie-osd .budgie-osd-text {
  font-size: 120%;
}

.drop-shadow {
  margin: 5px 9px;
  padding: 8px;
  border-radius: 2px;
  box-shadow: 0 5px 5px 0 transparent, 0 8px 15px 0 transparent, 0 3px 3px 0 rgba(0, 0, 0, 0.3);
  background-color: #222222;
  color: #d0c8c8;
}

.drop-shadow .linked > button {
  border-radius: 2px;
}

.budgie-run-dialog, .budgie-session-dialog,
.budgie-polkit-dialog {
  border-radius: 2px;
  background-color: #222222;
}

.background.budgie-run-dialog, .background.budgie-session-dialog,
.background.budgie-polkit-dialog {
  border-radius: 2px;
}

.budgie-run-dialog decoration, .budgie-session-dialog decoration,
.budgie-polkit-dialog decoration {
  border-radius: 2px;
}

.budgie-session-dialog label:not(:last-child),
.budgie-session-dialog .dialog-title,
.budgie-polkit-dialog label:not(:last-child),
.budgie-polkit-dialog .dialog-title {
  font-size: 120%;
}

.budgie-session-dialog .linked.horizontal > button,
.budgie-polkit-dialog .linked.horizontal > button {
  padding: 8px 16px;
  border: none;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 0;
}

.budgie-session-dialog .linked.horizontal > button:active, .budgie-session-dialog .linked.horizontal > button:checked,
.budgie-polkit-dialog .linked.horizontal > button:active,
.budgie-polkit-dialog .linked.horizontal > button:checked {
  transition: background-color 0.00001s 0.3s;
  animation: ripple_effect 0.3s cubic-bezier(0, 0, 0.2, 1);
}

.budgie-session-dialog .linked.horizontal > button:first-child,
.budgie-polkit-dialog .linked.horizontal > button:first-child {
  border-bottom-left-radius: 2px;
}

.budgie-session-dialog .linked.horizontal > button:last-child,
.budgie-polkit-dialog .linked.horizontal > button:last-child {
  border-bottom-right-radius: 2px;
}

.budgie-session-dialog .linked.horizontal > button:not(.suggested-action):not(.destructive-action):hover,
.budgie-polkit-dialog .linked.horizontal > button:not(.suggested-action):not(.destructive-action):hover {
  background-color: alpha(#cbbfbf,0.06);
  border-color: rgba(0, 0, 0, 0.25);
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.budgie-session-dialog .linked.horizontal > button:not(.suggested-action):not(.destructive-action):active, .budgie-session-dialog .linked.horizontal > button:not(.suggested-action):not(.destructive-action):checked,
.budgie-polkit-dialog .linked.horizontal > button:not(.suggested-action):not(.destructive-action):active,
.budgie-polkit-dialog .linked.horizontal > button:not(.suggested-action):not(.destructive-action):checked {
  color: #cbbfbf;
  background-color: alpha(#cbbfbf,0.1);
  border-color: rgba(0, 0, 0, 0.25);
}

.budgie-polkit-dialog .message {
  color: alpha(currentColor,0.6);
}

.budgie-polkit-dialog .failure {
  color: #db5b5b;
}

.budgie-run-dialog {
  background-color: #262626;
}

.budgie-run-dialog entry.search {
  font-size: 120%;
  padding: 6px 12px;
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
  background-color: transparent;
}

.budgie-run-dialog list .dim-label, .budgie-run-dialog list label.separator, .budgie-run-dialog list headerbar .subtitle, headerbar .budgie-run-dialog list .subtitle, .budgie-run-dialog list .slate-notification .notification-body, .slate-notification .budgie-run-dialog list .notification-body,
.budgie-run-dialog list .budgie-notification .notification-body,
.budgie-notification .budgie-run-dialog list .notification-body,
.budgie-run-dialog list .budgie-switcher .notification-body,
.budgie-switcher .budgie-run-dialog list .notification-body {
  opacity: 1;
}

.budgie-run-dialog scrolledwindow {
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

.budgie-panel box.titlebar {
  min-width: 20px;
  min-height: 20px;
  border-radius: 0;
  background: unset;
  box-shadow: none;
  border: none;
}

.budgie-panel box.titlebar > widget > label {
  color: #d0c8c8;
}

.budgie-panel box.titlebar.horizontal {
  padding: 0 3px;
}

.budgie-panel box.titlebar.horizontal > widget > label:dir(ltr) {
  padding-right: 3px;
}

.budgie-panel box.titlebar.horizontal > widget > label:dir(rtl) {
  padding-left: 3px;
}

.budgie-panel box.titlebar.horizontal > button.image-button.titlebutton {
  padding: 0 3px;
}

/*****************
 * Xfce4 Desktop *
 *****************/
.xfce4-panel button, .xfce4-panel button.flat, .xfce4-panel.panel button, .xfce4-panel.panel button.flat, window#ValaPanel.background button.flat.-panel-button,
window#ValaPanel.background button#tasklist-button.toggle.flat,
window#ValaPanel.background button.flat.-panel-icon-button, .mate-panel-menu-bar button,
.mate-panel-menu-bar button#tasklist-button,
panel-toplevel.background button,
panel-toplevel.background button#tasklist-button {
  color: #d0c8c8;
  border-radius: 0;
  border: none;
  background-color: transparent;
}

.xfce4-panel button:hover:not(:active):not(:checked), window#ValaPanel.background button.flat.-panel-button:hover:not(:active):not(:checked),
window#ValaPanel.background button#tasklist-button.toggle.flat:hover:not(:active):not(:checked),
window#ValaPanel.background button.flat.-panel-icon-button:hover:not(:active):not(:checked), .mate-panel-menu-bar button:hover:not(:active):not(:checked),
.mate-panel-menu-bar button#tasklist-button:hover:not(:active):not(:checked),
panel-toplevel.background button:hover:not(:active):not(:checked),
panel-toplevel.background button#tasklist-button:hover:not(:active):not(:checked) {
  color: #ffffff;
  box-shadow: inset 0 -2px rgba(240, 84, 76, 0.5);
}

.xfce4-panel button:checked, window#ValaPanel.background button.flat.-panel-button:checked,
window#ValaPanel.background button#tasklist-button.toggle.flat:checked,
window#ValaPanel.background button.flat.-panel-icon-button:checked, .mate-panel-menu-bar button:checked,
.mate-panel-menu-bar button#tasklist-button:checked,
panel-toplevel.background button:checked,
panel-toplevel.background button#tasklist-button:checked {
  color: #ffffff;
  box-shadow: inset 0 -2px {{ accent }};
}

.xfce4-panel button:checked label, window#ValaPanel.background button.flat.-panel-button:checked label,
window#ValaPanel.background button#tasklist-button.toggle.flat:checked label,
window#ValaPanel.background button.flat.-panel-icon-button:checked label, .mate-panel-menu-bar button:checked label,
.mate-panel-menu-bar button#tasklist-button:checked label,
panel-toplevel.background button:checked label,
panel-toplevel.background button#tasklist-button:checked label, .xfce4-panel button:checked image, window#ValaPanel.background button.flat.-panel-button:checked image,
window#ValaPanel.background button#tasklist-button.toggle.flat:checked image,
window#ValaPanel.background button.flat.-panel-icon-button:checked image, .mate-panel-menu-bar button:checked image,
.mate-panel-menu-bar button#tasklist-button:checked image,
panel-toplevel.background button:checked image,
panel-toplevel.background button#tasklist-button:checked image {
  color: inherit;
}

.xfce4-panel button:active, window#ValaPanel.background button.flat.-panel-button:active,
window#ValaPanel.background button#tasklist-button.toggle.flat:active,
window#ValaPanel.background button.flat.-panel-icon-button:active, .mate-panel-menu-bar button:active,
.mate-panel-menu-bar button#tasklist-button:active,
panel-toplevel.background button:active,
panel-toplevel.background button#tasklist-button:active {
  background-color: rgba(255, 255, 255, 0.12);
  color: #ffffff;
  box-shadow: inset 0 -2px {{ accent }};
}

.xfce4-panel.panel {
  background-color: #222222;
  text-shadow: none;
  -gtk-icon-shadow: none;
  border: none;
}

.XfceHeading {
  border: 0 none transparent;
  background-color: #222222;
  color: #cbbfbf;
}

.xfce4-panel {
  background-color: #222222;
  color: #d0c8c8;
  font-weight: 700;
  text-shadow: none;
  -gtk-icon-shadow: none;
}

.xfce4-panel,
.xfce4-panel frame > border {
  border: none;
}

#XfcePanelWindow.xfce4-panel {
  border: none;
}

#XfcePanelWindow.xfce4-panel, #XfcePanelWindow.xfce4-panel.marching-ants {
  transition: none;
}

.xfce4-panel button {
  font-weight: 700;
}

.xfce4-panel button#launcher-arrow:hover, .xfce4-panel button#launcher-arrow + button.toggle:hover {
  box-shadow: none;
}

.xfce4-panel button#launcher-arrow + button.toggle:checked {
  color: {{ accent }};
  box-shadow: none;
}

.xfce4-panel button#xfce4-notification-plugin {
  padding: 0 1px;
}

.xfce4-panel menu {
  font-weight: 400;
  text-shadow: none;
  -gtk-icon-effect: none;
}

.xfce4-panel widget.tasklist > button.toggle {
  font-weight: 400;
}

window#XfcePanelWindow.background.panel.xfce4-panel {
  border: none;
}

window#XfcePanelWindow.background.panel.xfce4-panel > widget wnck-pager {
  background-color: rgba(255, 255, 255, 0.1);
  border: none;
  box-shadow: 0 0 0 1px rgba(255, 255, 255, 0.15);
}

window#XfcePanelWindow.background.panel.xfce4-panel > widget wnck-pager:hover {
  background-color: rgba(255, 255, 255, 0.25);
}

window#XfcePanelWindow.background.panel.xfce4-panel > widget wnck-pager:active, window#XfcePanelWindow.background.panel.xfce4-panel > widget wnck-pager:checked, window#XfcePanelWindow.background.panel.xfce4-panel > widget wnck-pager:selected {
  background-color: rgba(255, 255, 255, 0.35);
}

XfdesktopIconView.view {
  border-radius: 2px;
  background: transparent;
  color: #ffffff;
  text-shadow: 0 0 1px rgba(0, 0, 0, 0.26), 0 1px 2px rgba(0, 0, 0, 0.32), 0 2px 3px rgba(0, 0, 0, 0.12);
}

XfdesktopIconView.view:active, XfdesktopIconView.view:checked {
  background-color: {{ accent }};
  color: #ffffff;
  text-shadow: none;
}

window#whiskermenu-window > frame > stack scrolledwindow scrollbar {
  background-color: rgba(0, 0, 0, 0.15);
  border-color: #1d1d1d;
}

window#whiskermenu-window > frame > stack scrolledwindow scrollbar.overlay-indicator:not(.dragging):not(.hovering) slider {
  background-color: #d0c8c8;
  border: 1px solid rgba(0, 0, 0, 0.2);
}

window#whiskermenu-window > frame > stack scrolledwindow scrollbar slider {
  background-color: rgba(243, 241, 241, 0.65);
}

window#whiskermenu-window > frame > stack scrolledwindow scrollbar slider:hover {
  background-color: white;
}

window#whiskermenu-window > frame > stack scrolledwindow scrollbar slider:hover:active {
  background-color: {{ accent }};
}

window#whiskermenu-window > frame > stack scrolledwindow scrollbar slider:disabled {
  background-color: transparent;
}

window#whiskermenu-window > frame > stack scrolledwindow scrollbar trough {
  background-color: rgba(0, 0, 0, 0.08);
}

window#whiskermenu-window {
  background-color: #222222;
  color: #d0c8c8;
}

window#whiskermenu-window > frame > border {
  border-radius: 0;
}

window#whiskermenu-window > frame > stack button {
  background-color: transparent;
  color: #d0c8c8;
  background-clip: padding-box;
}

window#whiskermenu-window > frame > stack button:hover {
  background-color: rgba(208, 200, 200, 0.12);
  color: #ffffff;
  border-color: rgba(0, 0, 0, 0.2);
}

window#whiskermenu-window > frame > stack button:checked, window#whiskermenu-window > frame > stack button:active {
  background-color: {{ accent }};
  color: #ffffff;
  border-color: rgba(0, 0, 0, 0.2);
}

window#whiskermenu-window > frame > stack button:disabled {
  color: rgba(208, 200, 200, 0.45);
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(34, 34, 34, 0.45);
}

window#whiskermenu-window > frame > stack entry {
  background-color: rgba(208, 200, 200, 0.1);
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.2);
}

window#whiskermenu-window > frame > stack entry image {
  color: #ada7a7;
}

window#whiskermenu-window > frame > stack entry:focus {
  border-color: {{ accent }};
}

window#whiskermenu-window > frame > stack entry:focus image {
  color: {{ accent }};
}

window#whiskermenu-window > frame > stack entry:disabled {
  color: rgba(208, 200, 200, 0.45);
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(34, 34, 34, 0.45);
}

window#whiskermenu-window > frame > stack entry:disabled image {
  color: rgba(208, 200, 200, 0.45);
}

window#whiskermenu-window > frame > stack scrolledwindow .view {
  background-color: rgba(47, 47, 47, 0.9);
  color: #d0c8c8;
}

window#whiskermenu-window > frame > stack scrolledwindow .view:selected:hover {
  background-color: #3c3c3c;
  color: #d0c8c8;
}

window.thunar paned.horizontal > separator {
  background-image: image(#1a1a1a);
}

window.thunar .sidebar {
  border: none;
}

window.thunar .sidebar treeview.view {
  background-color: #222222;
}

window.thunar toolbar#location-toolbar, window.thunar #location-toolbar.inline-toolbar {
  background-color: #1a1a1a;
  color: #d0c8c8;
}

window.thunar toolbar#location-toolbar entry, window.thunar #location-toolbar.inline-toolbar entry {
  min-height: 0;
}

window.thunar toolbar#location-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button, window.thunar #location-toolbar.inline-toolbar .linked.path-bar:not(.vertical):not(.stack-switcher) button {
  margin: 0;
  padding: 2px 4px 4px 4px;
}

window.thunar notebook stack > scrolledwindow.frame.standard-view {
  border-top-width: 0;
  border-right-width: 0;
}

window.thunar notebook stack > scrolledwindow.frame.standard-view widget.view {
  border-radius: 2px;
}

window.thunar notebook header.top tab.reorderable-page > box > label {
  min-height: 0;
}

/**********************
 * Elementary Desktop *
 **********************/
.panel {
  background-color: #222222;
  transition: all 100ms ease-in-out;
  color: #d0c8c8;
  font-weight: bold;
}

.panel.maximized {
  background-color: black;
}

.panel.translucent {
  background-color: #222222;
}

menubar .panel, .panel menubar {
  box-shadow: none;
  border: none;
  background: none;
  color: #d0c8c8;
}

.panel-shadow {
  background-image: none;
  background-color: transparent;
}

.panel .menu {
  box-shadow: none;
}

.panel .menu .menuitem {
  font-weight: normal;
}

.panel .menubar > .menuitem {
  padding: 3px 6px;
}

.panel .menubar > .menuitem:hover {
  background-color: transparent;
}

.panel popover {
  padding: 2px 4px;
  font-weight: normal;
  border: 1px solid rgba(255, 255, 255, 0.12);
  box-shadow: 0 2px 3px rgba(0, 0, 0, 0.12), 0 3px 6px rgba(0, 0, 0, 0.08);
}

.panel popover button {
  font-weight: normal;
  background-color: transparent;
}

.panel popover button:active label, .panel popover button:checked label {
  color: white;
}

.panel popover .linked > button {
  border-color: rgba(0, 0, 0, 0.25);
}

.panel popover list {
  background-color: transparent;
}

.panel popover separator.horizontal {
  margin: 0 -4px;
}

.panel popover separator.vertical {
  background-image: image(rgba(0, 0, 0, 0.25));
  margin: 0 2px;
}

.panel popover .sidebar {
  border-style: none;
  background: none;
}

.panel popover .sidebar .view {
  background: none;
  border-radius: 2px;
}

.panel popover .sidebar .view:selected, .panel popover .sidebar .view:active, .panel popover .sidebar .view:checked, .panel popover .sidebar .view:active:backdrop, .panel popover .sidebar .view:checked:backdrop, .panel popover .sidebar .view:selected:backdrop {
  color: #ffffff;
  background-color: {{ accent }};
}

button.flat.toggle.switcher:hover image, button.flat.toggle.switcher:active image, button.flat.toggle.switcher:checked image, button.flat.toggle.switcher:selected image {
  color: {{ accent }};
}

.circular label:disabled {
  color: rgba(203, 191, 191, 0.45);
}

.circular.accent {
  color: #ffffff;
  background-color: {{ accent }};
}

.panel-app-button > GtkWidget > GtkWidget:first-child {
  padding: 0 2px 0 4px;
}

.panel .menu .spinner,
.menu .spinner {
  opacity: 1;
}

.composited-indicator {
  background-color: transparent;
  color: #d0c8c8;
  padding: 0 6px;
}

.composited-indicator > revealer label,
.composited-indicator > revealer image,
.composited-indicator > revealer spinner {
  color: #d0c8c8;
  font-weight: bold;
  text-shadow: none;
  transition: all 200ms ease-in-out;
}

.composited-indicator .keyboard {
  background-color: #fff;
  border-radius: 2px;
  box-shadow: none;
  color: #333;
  font-weight: 600;
  padding: 0 3px;
  text-shadow: none;
}

.composited-indicator > GtkWidget > GtkWidget:first-child {
  padding: 0 2px;
}

.composited-indicator .menuitem:active, .composited-indicator .menuitem:hover {
  border-style: none;
}

.composited-indicator > .popup > .menu {
  padding-top: 8px;
  padding-bottom: 8px;
}

BirdieWidgetsTweetList * {
  background-image: none;
  background-color: transparent;
}

MarlinViewWindow *:selected, MarlinViewWindow *:selected:focus {
  color: #ffffff;
  background-color: {{ accent }};
  outline-color: transparent;
}

MarlinViewWindow GtkIconView.view:selected, MarlinViewWindow GtkIconView.view:selected:focus, MarlinViewWindow GtkIconView.view:selected:hover, MarlinViewWindow GtkIconView.view:selected:focus:hover {
  background-color: transparent;
}

MarlinViewWindow FMListView, MarlinViewWindow FMColumnView {
  outline-color: transparent;
}

.marlin-pathbar.pathbar {
  border-radius: 3px;
  padding-left: 4px;
  padding-right: 4px;
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.42);
}

.marlin-pathbar.pathbar image, .marlin-pathbar.pathbar image:hover {
  color: inherit;
}

.marlin-pathbar.pathbar:focus {
  color: white;
  border-color: {{ accent }};
  background-color: rgba(67, 67, 67, 0.42);
}

.marlin-pathbar.pathbar:disabled {
  color: rgba(208, 200, 200, 0.55);
  border-color: rgba(0, 0, 0, 0.42);
  background-color: rgba(82, 82, 82, 0.85);
}

.marlin-pathbar.pathbar:active, .marlin-pathbar.pathbar:checked {
  color: {{ accent }};
}

treeview.view.sidebar {
  color: #d0c8c8;
  background-color: rgba(54, 54, 54, 0.95);
}

treeview.view.sidebar.source-list {
  padding-top: 3px;
  padding-bottom: 3px;
}

treeview.view.sidebar.source-list.trough {
  color: #cbbfbf;
  background-color: rgba(0, 0, 0, 0.25);
  border-radius: 3px;
  border-width: 0;
}

treeview.view.sidebar.source-list.trough:selected, treeview.view.sidebar.source-list.trough:selected:focus {
  color: #ffffff;
  background-color: rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  border-width: 0;
}

.dynamic-notebook notebook iconview.view.cell:selected {
  background-color: rgba(255, 255, 255, 0.08);
}

headerbar.titlebar entry.pathbar {
  min-height: 0;
}

headerbar.titlebar button.flat.image-button.toggle {
  min-height: 0;
  padding-top: 0;
  padding-bottom: 0;
  margin-top: 9px;
  margin-bottom: 10px;
}

headerbar.titlebar > grid.linked.horizontal.format-bar {
  background-image: image(#1a1a1a);
}

popover radiobutton.color-button.color-light, popover radiobutton.color-button.color-dark, popover radiobutton.color-button.color-white {
  border: 1px solid rgba(0, 0, 0, 0.25);
}

.gala-notification {
  border: 1px solid rgba(0, 0, 0, 0.35);
  border-radius: 3px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  background-image: linear-gradient(to bottom, white, white);
  background-color: transparent;
}

.gala-notification .title, .gala-notification .label {
  color: #5c616c;
}

actionbar.inline-toolbar {
  border: none;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
}

actionbar.inline-toolbar button {
  border-radius: 3px;
  border: 1px solid rgba(0, 0, 0, 0.25);
}

actionbar.inline-toolbar button:first-child {
  border-right-style: solid;
}

actionbar.inline-toolbar button:last-child {
  border-left-style: solid;
}

scale.warmth trough {
  background-image: linear-gradient(to right, #2eb398, #db5b5b);
  box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.25);
}

#panel_window {
  background-color: #222222;
  color: #d0c8c8;
  font-weight: bold;
  box-shadow: inset 0 -1px #101010;
}

#panel_window menubar {
  padding-left: 5px;
}

#panel_window menubar, #panel_window menubar > menuitem {
  background-color: transparent;
  color: #d0c8c8;
  font-weight: bold;
}

#panel_window menubar menuitem:disabled {
  color: rgba(208, 200, 200, 0.5);
}

#panel_window menubar menuitem:disabled label {
  color: inherit;
}

#panel_window menubar menu > menuitem {
  font-weight: normal;
}

#login_window,
#shutdown_dialog,
#restart_dialog {
  font-weight: normal;
  border-style: none;
  background-color: transparent;
  color: #cbbfbf;
}

#content_frame {
  padding-bottom: 14px;
  background-color: #222222;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border: solid rgba(0, 0, 0, 0.1);
  border-width: 1px 1px 0 1px;
}

#content_frame button {
  color: #cbbfbf;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #2b2b2b;
}

#content_frame button:hover {
  color: #a99595;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #404040;
}

#content_frame button:active, #content_frame button:checked {
  color: #ffffff;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: {{ accent }};
}

#content_frame button:disabled {
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(43, 43, 43, 0.55);
}

#content_frame button:disabled label, #content_frame button:disabled {
  color: rgba(203, 191, 191, 0.45);
}

#buttonbox_frame {
  padding-top: 20px;
  padding-bottom: 0px;
  border-style: none;
  background-color: #1a1a1a;
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  border: solid rgba(0, 0, 0, 0.1);
  border-width: 0 1px 1px 1px;
  box-shadow: inset 0 1px #101010;
}

#buttonbox_frame button {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.42);
}

#buttonbox_frame button:hover {
  color: #d0c8c8;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(115, 115, 115, 0.52);
}

#buttonbox_frame button:active, #buttonbox_frame button:checked {
  color: #ffffff;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: {{ accent }};
}

#buttonbox_frame button:disabled {
  color: #5b5959;
  border-color: rgba(11, 11, 11, 0.42);
  background-color: rgba(97, 97, 97, 0.85);
}

#login_window #user_combobox {
  color: #cbbfbf;
  font-size: 13px;
}

#login_window #user_combobox menu {
  font-weight: normal;
}

#user_image {
  padding: 3px;
  border-radius: 2px;
}

#shutdown_button.button {
  background-clip: border-box;
  color: green;
  background-color: #db5b5b;
  border-color: #db5b5b;
}

#shutdown_button.button:hover {
  background-clip: border-box;
  color: green;
  background-color: #e48585;
  border-color: #e48585;
}

#shutdown_button.button:active, #shutdown_button.button:checked {
  background-clip: border-box;
  color: green;
  background-color: #d23131;
  border-color: #d23131;
}

#restart_button.button {
  background-clip: border-box;
  color: green;
  background-color: #2eb398;
  border-color: #2eb398;
}

#restart_button.button:hover {
  background-clip: border-box;
  color: green;
  background-color: #45cfb3;
  border-color: #45cfb3;
}

#restart_button.button:active, #restart_button.button:checked {
  background-clip: border-box;
  color: green;
  background-color: #248a76;
  border-color: #248a76;
}

#greeter_infobar {
  border-bottom-width: 0;
  font-weight: bold;
}

.overlay-bar {
  background-color: {{ accent }};
  border-color: {{ accent }};
  border-radius: 2px;
  padding: 3px 6px;
  margin: 3px;
}

.overlay-bar label {
  color: #ffffff;
}

GraniteWidgetsThinPaned {
  background-color: transparent;
  background-image: none;
  margin: 0;
  border-left: 1px solid rgba(0, 0, 0, 0.25);
  border-right: 1px solid rgba(0, 0, 0, 0.25);
}

GraniteWidgetsPopOver .frame,
GraniteWidgetsStaticNotebook .frame {
  border: none;
}

.help_button {
  border-radius: 100px;
  padding: 3px 9px;
}

toolbar.secondary-toolbar, .secondary-toolbar.inline-toolbar {
  padding: 3px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.25);
}

toolbar.secondary-toolbar button, .secondary-toolbar.inline-toolbar button {
  padding: 0 3px 0 3px;
}

toolbar.bottom-toolbar, .bottom-toolbar.inline-toolbar {
  padding: 5px;
  border-width: 1px 0 0 0;
  border-style: solid;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #222222;
}

toolbar.bottom-toolbar button, .bottom-toolbar.inline-toolbar button {
  padding: 2px 3px 2px 3px;
}

.source-list {
  -GtkTreeView-horizontal-separator: 1px;
  -GtkTreeView-vertical-separator: 6px;
}

.source-list,
.source-list.view {
  background-color: #222222;
  color: #cbbfbf;
  -gtk-icon-style: regular;
}

.source-list.category-expander {
  color: transparent;
}

.source-list.view:hover {
  background-color: #2f2f2f;
}

.source-list.view:selected,
.source-list.view:hover:selected,
.source-list.view:selected:focus,
.source-list.category-expander:hover {
  color: #ffffff;
  background-color: {{ accent }};
}

.source-list scrollbar,
.source-list junction {
  border-image: none;
  border-color: transparent;
  background-color: #222222;
  background-image: none;
}

.source-list.badge,
.source-list.badge:hover,
.source-list.badge:selected,
.source-list.badge:selected:focus,
.source-list.badge:hover:selected {
  background-image: none;
  background-color: {{ accent }};
  color: #ffffff;
  border-radius: 10px;
  padding: 0 6px;
  margin: 0 3px;
  border-width: 0;
}

.source-list.badge:selected,
.source-list.badge:selected:focus,
.source-list.badge:hover:selected {
  background-color: #ffffff;
  color: {{ accent }};
}

.source-list.category-expander {
  color: #cbbfbf;
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
  -GtkTreeView-expander-size: 16;
}

.source-list.category-expander,
.source-list.category-expander:backdrop {
  color: transparent;
  border: none;
}

.source-list.category-expander:checked {
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
}

GraniteWidgetsWelcome {
  background-color: #262626;
}

GraniteWidgetsWelcome label {
  color: #777171;
  font-size: 11px;
  text-shadow: none;
}

GraniteWidgetsWelcome .h1,
GraniteWidgetsWelcome .h3 {
  color: rgba(203, 191, 191, 0.8);
}

.help_button {
  border-radius: 0;
}

GraniteWidgetsPopOver {
  -GraniteWidgetsPopOver-arrow-width: 21;
  -GraniteWidgetsPopOver-arrow-height: 10;
  -GraniteWidgetsPopOver-border-radius: 2px;
  -GraniteWidgetsPopOver-border-width: 1;
  -GraniteWidgetsPopOver-shadow-size: 12;
  border: 1px solid rgba(0, 0, 0, 0.3);
  margin: 0;
}

.popover_bg {
  background-image: linear-gradient(to bottom, #262626, #262626);
  border: 1px solid rgba(0, 0, 0, 0.3);
}

GraniteWidgetsPopOver .sidebar.view,
GraniteWidgetsPopOver * {
  background-color: transparent;
}

GraniteWidgetsXsEntry entry {
  padding: 4px;
}

.h1 {
  font-size: 24px;
}

.h2 {
  font-size: 18px;
}

.h3 {
  font-size: 11px;
}

.h4,
.category-label {
  color: #898282;
  font-weight: 600;
}

.h4 {
  padding-bottom: 6px;
  padding-top: 6px;
}

GtkListBox .h4 {
  padding-left: 6px;
}

filechooser paned > separator,
.nautilus-window paned > separator {
  background-image: linear-gradient(to bottom, rgba(41, 41, 41, 0.95), rgba(41, 41, 41, 0.95));
}

filechooser.csd.background, filechooser placessidebar list,
.nautilus-window.csd.background,
.nautilus-window placessidebar list {
  background-color: transparent;
}

filechooser placessidebar.sidebar,
.nautilus-window placessidebar.sidebar {
  background-color: rgba(54, 54, 54, 0.95);
}

filechooser placessidebar.sidebar row.sidebar-row,
.nautilus-window placessidebar.sidebar row.sidebar-row {
  border: none;
  color: #d0c8c8;
}

filechooser placessidebar.sidebar row.sidebar-row .sidebar-icon,
.nautilus-window placessidebar.sidebar row.sidebar-row .sidebar-icon {
  color: rgba(208, 200, 200, 0.6);
}

filechooser placessidebar.sidebar row.sidebar-row.has-open-popup, filechooser placessidebar.sidebar row.sidebar-row:hover,
.nautilus-window placessidebar.sidebar row.sidebar-row.has-open-popup,
.nautilus-window placessidebar.sidebar row.sidebar-row:hover {
  background-color: rgba(208, 200, 200, 0.15);
  box-shadow: inset 3px 0 #f4817b;
}

filechooser placessidebar.sidebar row.sidebar-row:disabled, filechooser placessidebar.sidebar row.sidebar-row:disabled label, filechooser placessidebar.sidebar row.sidebar-row:disabled image,
.nautilus-window placessidebar.sidebar row.sidebar-row:disabled,
.nautilus-window placessidebar.sidebar row.sidebar-row:disabled label,
.nautilus-window placessidebar.sidebar row.sidebar-row:disabled image {
  color: rgba(208, 200, 200, 0.45);
}

filechooser placessidebar.sidebar row.sidebar-row.has-open-popup:selected .sidebar-icon, filechooser placessidebar.sidebar row.sidebar-row:selected .sidebar-icon, filechooser placessidebar.sidebar row.sidebar-row:selected:hover .sidebar-icon, filechooser placessidebar.sidebar row.sidebar-row:active:hover .sidebar-icon,
.nautilus-window placessidebar.sidebar row.sidebar-row.has-open-popup:selected .sidebar-icon,
.nautilus-window placessidebar.sidebar row.sidebar-row:selected .sidebar-icon,
.nautilus-window placessidebar.sidebar row.sidebar-row:selected:hover .sidebar-icon,
.nautilus-window placessidebar.sidebar row.sidebar-row:active:hover .sidebar-icon {
  color: inherit;
}

filechooser placessidebar.sidebar row.sidebar-row:not(:selected) button.sidebar-button,
.nautilus-window placessidebar.sidebar row.sidebar-row:not(:selected) button.sidebar-button {
  color: #d0c8c8;
}

filechooser placessidebar.sidebar row.sidebar-row:not(:selected) button.sidebar-button:hover,
.nautilus-window placessidebar.sidebar row.sidebar-row:not(:selected) button.sidebar-button:hover {
  color: #d0c8c8;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: rgba(208, 200, 200, 0.18);
}

filechooser placessidebar.sidebar row.sidebar-row:not(:selected) button.sidebar-button:active,
.nautilus-window placessidebar.sidebar row.sidebar-row:not(:selected) button.sidebar-button:active {
  color: #ffffff;
  border-color: transparent;
  background-color: {{ accent }};
}

filechooser placessidebar.sidebar row.sidebar-row:not(:selected) button.sidebar-button:not(:hover):not(:active) > image,
.nautilus-window placessidebar.sidebar row.sidebar-row:not(:selected) button.sidebar-button:not(:hover):not(:active) > image {
  opacity: 0.5;
}

filechooser placessidebar.sidebar row.sidebar-row.sidebar-new-bookmark-row,
.nautilus-window placessidebar.sidebar row.sidebar-row.sidebar-new-bookmark-row {
  color: {{ accent }};
}

filechooser placessidebar.sidebar row.sidebar-row.sidebar-new-bookmark-row .sidebar-icon,
.nautilus-window placessidebar.sidebar row.sidebar-row.sidebar-new-bookmark-row .sidebar-icon {
  color: inherit;
}

filechooser placessidebar.sidebar row.sidebar-row:backdrop,
.nautilus-window placessidebar.sidebar row.sidebar-row:backdrop {
  opacity: 0.75;
}

filechooser placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled), filechooser placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled) label, filechooser placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled) .sidebar-icon,
.nautilus-window placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled),
.nautilus-window placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled) label,
.nautilus-window placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled) .sidebar-icon {
  color: #F08437;
}

filechooser placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled):selected,
.nautilus-window placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled):selected {
  background-color: #F08437;
}

filechooser placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled):selected, filechooser placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled):selected label, filechooser placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled):selected .sidebar-icon,
.nautilus-window placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled):selected,
.nautilus-window placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled):selected label,
.nautilus-window placessidebar.sidebar row.sidebar-row:drop(active):not(:disabled):selected .sidebar-icon {
  color: #ffffff;
}

filechooser placessidebar.sidebar separator,
.nautilus-window placessidebar.sidebar separator {
  background-color: transparent;
}

filechooser.maximized placessidebar.sidebar,
.nautilus-window.maximized placessidebar.sidebar {
  background-color: #363636;
}

filechooser actionbar {
  color: #cbbfbf;
  background-color: #222222;
  border-color: rgba(0, 0, 0, 0.25);
}

filechooser actionbar button {
  color: #cbbfbf;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #2b2b2b;
}

filechooser actionbar button:hover {
  color: #a99595;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #404040;
}

filechooser actionbar button:active, filechooser actionbar button:checked {
  color: #ffffff;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: {{ accent }};
}

filechooser actionbar button:disabled {
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(43, 43, 43, 0.55);
}

filechooser actionbar button:disabled label, filechooser actionbar button:disabled {
  color: rgba(203, 191, 191, 0.45);
}

filechooser actionbar entry {
  color: #b5abab;
  border-color: rgba(0, 0, 0, 0.25);
  background-color: #262626;
}

filechooser actionbar entry:focus {
  color: #b5abab;
  border-color: {{ accent }};
  background-color: #262626;
}

filechooser actionbar entry:disabled {
  color: rgba(203, 191, 191, 0.45);
  border-color: rgba(0, 0, 0, 0.15);
  background-color: rgba(38, 38, 38, 0.55);
}

filechooser actionbar label, filechooser actionbar combobox {
  color: #cbbfbf;
}

.gedit-bottom-panel-paned {
  background-color: #262626;
}

.gedit-side-panel-paned > separator {
  background-image: linear-gradient(to bottom, rgba(41, 41, 41, 0.95), rgba(41, 41, 41, 0.95));
}

.gedit-bottom-panel-paned > separator {
  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25));
}

.gedit-document-panel {
  background-color: rgba(54, 54, 54, 0.95);
}

.maximized .gedit-document-panel {
  background-color: #363636;
}

.gedit-document-panel row {
  color: #d0c8c8;
  background-color: rgba(208, 200, 200, 0);
}

.gedit-document-panel row:hover {
  background-color: rgba(208, 200, 200, 0.15);
}

.gedit-document-panel row:active {
  color: #ffffff;
  background-color: {{ accent }};
}

.gedit-document-panel row:active button {
  color: #ffffff;
}

.gedit-document-panel row:selected, .gedit-document-panel row:selected:hover {
  color: #ffffff;
  background-color: {{ accent }};
}

.gedit-document-panel row:hover:not(:selected) button:active {
  color: #d0c8c8;
}

filechooser placessidebar.sidebar scrollbar,
.nautilus-window placessidebar.sidebar scrollbar {
  border-color: rgba(41, 41, 41, 0.95);
}

filechooser placessidebar.sidebar scrollbar.overlay-indicator:not(.dragging):not(.hovering) slider,
.nautilus-window placessidebar.sidebar scrollbar.overlay-indicator:not(.dragging):not(.hovering) slider {
  background-color: #f3f1f1;
  border: 1px solid rgba(0, 0, 0, 0.3);
}

filechooser placessidebar.sidebar scrollbar slider,
.nautilus-window placessidebar.sidebar scrollbar slider {
  background-color: rgba(243, 241, 241, 0.7);
}

filechooser placessidebar.sidebar scrollbar slider:hover,
.nautilus-window placessidebar.sidebar scrollbar slider:hover {
  background-color: white;
}

filechooser placessidebar.sidebar scrollbar slider:hover:active,
.nautilus-window placessidebar.sidebar scrollbar slider:hover:active {
  background-color: {{ accent }};
}

filechooser placessidebar.sidebar scrollbar slider:disabled,
.nautilus-window placessidebar.sidebar scrollbar slider:disabled {
  background-color: transparent;
}

filechooser placessidebar.sidebar scrollbar trough,
.nautilus-window placessidebar.sidebar scrollbar trough {
  background-color: rgba(41, 41, 41, 0.95);
}

@define-color theme_fg_color #cbbfbf;
@define-color theme_text_color #b5abab;
@define-color theme_bg_color #222222;
@define-color theme_base_color #262626;
@define-color theme_selected_bg_color {{ accent }};
@define-color theme_selected_fg_color #ffffff;
@define-color fg_color #cbbfbf;
@define-color text_color #b5abab;
@define-color bg_color #222222;
@define-color base_color #262626;
@define-color selected_bg_color {{ accent }};
@define-color selected_fg_color #ffffff;
@define-color insensitive_bg_color #272727;
@define-color insensitive_fg_color alpha(rgba(203, 191, 191, 0.45), 0.5);
@define-color insensitive_base_color #262626;
@define-color theme_unfocused_fg_color #cbbfbf;
@define-color theme_unfocused_text_color #b5abab;
@define-color theme_unfocused_bg_color #222222;
@define-color theme_unfocused_base_color #262626;
@define-color borders rgba(0, 0, 0, 0.25);
@define-color unfocused_borders rgba(0, 0, 0, 0.25);
@define-color warning_color #F27835;
@define-color error_color #FC4138;
@define-color success_color #3498db;
@define-color placeholder_text_color #A8A8A8;
@define-color link_color #f8aeaa;
@define-color content_view_bg #262626;
@define-color wm_title alpha(#d0c8c8, 0.8);
@define-color wm_unfocused_title alpha(#d0c8c8, 0.5);
@define-color wm_bg #1a1a1a;
@define-color wm_bg_unfocused #272727;
@define-color wm_highlight #222222;
@define-color wm_shadow alpha(black, 0.35);
@define-color wm_button_close_bg #cc575d;
@define-color wm_button_close_hover_bg #d7787d;
@define-color wm_button_close_active_bg #be3841;
@define-color wm_icon_close_bg #1a1a1a;
@define-color wm_button_hover_bg #343434;
@define-color wm_button_active_bg {{ accent }};
@define-color wm_button_hover_border #101010;
@define-color wm_icon_bg #d0c8c8;
@define-color wm_icon_unfocused_bg #534747;
@define-color wm_icon_hover_bg #d0c8c8;
@define-color wm_icon_active_bg #ffffff;
@define-color budgie_tasklist_indicator_color {{ accent }};
@define-color budgie_tasklist_indicator_color_active {{ accent }};
@define-color budgie_tasklist_indicator_color_active_window #913d39;
@define-color budgie_tasklist_indicator_color_attention #F27835;
