# NeoVIM config

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Plugins](#plugins)
- [Credits](#credits)

## Prerequisites
- Basic utils: `make`, `unzip`, C Compiler (`gcc`)
    For Linux:
    ```sh
    sudo apt install update && sudo apt install unzip build-essential
    ```
- [Git](https://git-scm.com/downloads) >= 2.19.0
- [Neovim](https://neovim.io) >= 0.8.0
- [Ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- A [Nerd Font.](https://www.nerdfonts.com) 
- [Lua](https://www.lua.org/download.html)
- [Luarocks](https://luarocks.org)

## Setup
Go to your Neovim configuration folder location. This is located in one of the following paths, depending on your OS

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

Clone the repository

Linux/Mac

```sh
git clone https://github.com/Ghoul072/nvim-config ~/.config/nvim
```

Windows

```sh
git clone https://github.com/Ghoul072/nvim-config "${env:LOCALAPPDATA}\nvim"
```
Note: If you're using cmd instead of powershell, replace "${env:LOCALAPPDATA}\nvim" with "%localappdata%\nvim\"

If you don't want to replace your existing configuration, you can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME` to maintain multiple configurations.

For example:
- Install this configuration in '~/.config/{custom_config_name}'
- Create an alias `alias {custom_alias}='NVIM_APPNAME="{custom_config_name}" nvim'`
- Then when you run Neovim with your custom alias, it will use the respective config directory and its matching local directory '~/.local/share/{custom_config_name}'.

You can apply this approach to any Neovim distribution that you would like to try out

## Plugins
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [Tokyonight](https://github.com/folke/tokyonight.nvim)
- [Neo-tree.nvim](https://github.com/folke/tokyonight.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)


## Credits
This section is dedicated to thanking all the sources that have helped and inspired me in learning Neovim and creating this config

- [VIM Adventures](https://vim-adventures.com)
- [Neovim Tutor](https://neovim.io/doc/user/usr_01.html#tutor)
- [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim/blob/master/README.md)
- [adibhanna](https://github.com/adibhanna/nvim)
- [That one senior at work who told me to start learning VIM](https://github.com/lishaan)

