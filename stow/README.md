## [`Stow`](https://www.gnu.org/software/stow/)

    ~
    ├── .stow-global-ignore     Ignore files based on F-dotfiles filenaming scheme
    └── .stowrc                 Set $HOME as default target dir

### Install notes

**Important:** it should be the first package you install as it is responsible for filtering *README* files and subpackages files trees when you stow a package.

Once installed, you can type `restow-dotfiles` to update stowed configs

(Stolen from https://raw.githubusercontent.com/Kraymer/F-dotfiles/ : Thanks Kraymer !)
