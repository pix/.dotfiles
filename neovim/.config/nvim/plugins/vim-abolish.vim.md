# Vim Abolish

## Load Plugin
```
Plug 'tpope/vim-abolish'
```

## Examples

- Keep case and replace:
  - `:%Subvert/facilit{y,ies}/building{,}/g`
  - `'<'>Subvert/di{e,ce}/spinner{,s}/g`


  You can abbreviate it as `:S`, and it accepts the full range of flags
  including things like `c` (confirm).


## Coercion
  - MixedCase (`crm`),
  - camelCase (`crc`),
  - snake\_case (`crs`),
  - UPPER\_CASE (`cru`),
  - dash-case (`cr-`),
  - dot.case (`cr.`),
  - space case (`cr<space>`),
  - Title Case (`crt`)

