#!/bin/bash

CONFIG_HOME="$HOME/.config"
DOTFILES_DIR="$HOME/dotfiles"

# Subdirectories of nvim
DOTFILES_NVIM="$DOTFILES_DIR/nvim"
DOTFILES_LUA="$DOTFILES_NVIM/lua"
DOTFILES_CORE="$DOTFILES_LUA/teriola/core"
DOTFILES_PLUGINS="$DOTFILES_LUA/teriola/plugins"

# Subdirectories of tmux
DOTFILES_TMUX="$DOTFILES_DIR/tmux"

# Subdirectories of i3
DOTFILES_I3="$DOTFILES_DIR/i3"

# Subdirectories of alacritty
DOTFILES_ALACRITTY="$DOTFILES_DIR/alacritty"

########
# nvim #
########
# nvim dirs
NVIM_DIR="$CONFIG_HOME/nvim"
TERIOLA_DIR="$NVIM_DIR/lua/teriola"
CORE_DIR="$TERIOLA_DIR/core"
PLUGINS_DIR="$TERIOLA_DIR/plugins"
LSP_DIR="$PLUGINS_DIR/lsp"

# Create directories
mkdir -p "$NVIM_DIR"
mkdir -p "$TERIOLA_DIR"
mkdir -p "$CORE_DIR"
mkdir -p "$PLUGINS_DIR"
mkdir -p "$LSP_DIR"

# Add all files
ln -sf "$DOTFILES_NVIM/init.lua" "$NVIM_DIR"
ln -sf "$DOTFILES_LUA/teriola/plugins-setup.lua" "$TERIOLA_DIR"

ln -sf "$DOTFILES_CORE/options.lua" "$CORE_DIR"
ln -sf "$DOTFILES_CORE/keymaps.lua" "$CORE_DIR"
ln -sf "$DOTFILES_CORE/colorscheme.lua" "$CORE_DIR" 

ln -sf "$DOTFILES_PLUGINS/autopairs.lua" "$PLUGINS_DIR" 
ln -sf "$DOTFILES_PLUGINS/nvim-leap.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_PLUGINS/telescope.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_PLUGINS/comment.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_PLUGINS/lualine.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_PLUGINS/nvim-tree.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_PLUGINS/treesitter.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_PLUGINS/nvim-cmp.lua" "$PLUGINS_DIR"

ln -sf "$DOTFILES_PLUGINS/lsp/lsp.lua" "$LSP_DIR"

########
# tmux #
########
# tmux dirs
TMUX_DIR="$CONFIG_HOME/tmux"

mkdir -p "$TMUX_DIR"
ln -sf "$DOTFILES_TMUX/tmux.conf" "$TMUX_DIR/tmux.conf"


########
#  i3  #
########

I3_DIR="$CONFIG_HOME/i3"

mkdir -p "$I3_DIR"
mkdir -p "$I3_DIR/scripts"
ln -sf "$DOTFILES_I3/config" "$I3_DIR/config"
ln -sf "$DOTFILES_I3/i3status.conf" "$I3_DIR/i3status.conf" 

ln -sf "$DOTFILES_I3/scripts/lock.sh" "$I3_DIR/scripts/lock.sh"


#############
# alacritty #
#############

ALACRITTY_DIR="$CONFIG_HOME/alacritty"

mkdir -p "$ALACRITTY_DIR"
ln -sf "$DOTFILES_ALACRITTY/alacritty.yml" "$ALACRITTY_DIR/alacritty.yml"
ln -sf "$DOTFILES_ALACRITTY/theme.yml" "$ALACRITTY_DIR/theme.yml"
