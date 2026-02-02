#!/usr/bin/env fish

set fish_config "$HOME/.config/fish/config.fish"
#set nvim_config "$HOME/.config/nvim"
set ghostty_config "$HOME/.config/ghostty/config"
set tmux_config "$HOME/.config/tmux/tmux.conf"

if test "$argv[1]" = push
	
	ln -sf (realpath fish/config.fish) "$fish_config"
	
	#ln -sf (realpath nvim) "$nvim_config"

	ln -sf (realpath ghostty/config) "$ghostty_config"

	ln -sf (realpath tmux/tmux.conf) "$tmux_config"
end
