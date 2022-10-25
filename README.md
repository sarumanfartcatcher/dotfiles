# dotfiles

These are my configuration files for Zsh and NeoVim. Above all, please do not just copy and paste them into your own configuration files. They are meant to be used as inspiration for your own configuration. Your tools should reflect your own needs, not mine.

## Installation

1. Clone the repository
2. Move the files in the `zsh/` folder to your home directory
3. Move the `NeoVim/` files to your NeoVim config location (on macOS that's `~/.config/nvim/`)
4. Edit the NeoVim plugins that point to filepaths to instead point to the correct URL
5. Install zplug and oh-my-zsh
6. Install Packer
7. Run `$ zplug install`
8. Run `:PackerInstall` from inside NeoVim

## Screenshots

<img width="1280" alt="Screenshot 2022-10-25 at 4 42 38 PM" src="https://user-images.githubusercontent.com/93488695/197888062-f3496952-f86f-4ea3-86eb-56668e7872b5.png">

![Screenshot 2022-10-25 at 4 41 44 PM](https://user-images.githubusercontent.com/93488695/197888095-cbbe5e4e-f48b-43f4-bec6-f146df96d459.png)

![Screenshot 2022-10-25 at 4 40 33 PM](https://user-images.githubusercontent.com/93488695/197888152-a74306cc-8c16-4e39-85a9-788fdc2d4425.png)

## Layout

The scheme of my NeoVim config layout is rather simple once you understand it.

```
.
├── init.lua
├── lua
    ├── mappings.lua
    ├── plugins.lua
    ├── setup
    │   ├── alpha-dash.lua
    │   ├── autopairs.lua
    │   ├── cmp.lua
    │   ├── comment.lua
    │   ├── copilot-cmp.lua
    │   ├── copilot.lua
    │   ├── gitsigns.lua
    │   ├── lualine.lua
    │   ├── markdown-preview.lua
    │   ├── null-ls.lua
    │   ├── nvim-tree.lua
    │   ├── octo.lua
    │   ├── todo.lua
    │   ├── tokyonight.lua
    │   ├── treesitter.lua
    │   ├── treesitter_context.lua
    │   ├── treesitter_refactor.lua
    │   ├── trouble.lua
    │   └── which-key.lua
    └── vars.lua
```

The `init.lua` file loads my keymappings, variables, and plugins. Each plugin has its own configuration file in the setup directory. No matter how small the configuration a plugin needs, I still want it in its own file so it's easier to find later. It also keeps a hard rule to make sure my plugin file doesn't get too long.
