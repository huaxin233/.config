set -g fish_greeting ""

function fish_prompt
	set_color b8bb26
	echo (prompt_pwd -D 6)
	echo -n "> "
	set_color normal
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function nh
	nohup $argv &>/dev/null &
end

function ch
	curl cheat.sh/$argv[1]
end

alias v vim
alias x tmux
alias 7z 7zz
alias bt btop

alias go "open /Volumes/mzcj-mac/Applications/Google\ Chrome.app"
alias cl "open /Applications/Clash\ Verge.app"
alias dd "ddgr --unsafe -n 4 -x --np"


abbr yr y ~/repo
abbr yd y ~/Downloads
abbr yt y ~/Desktop


abbr gs git status
abbr gd git defftool -y
abbr ga git add -A
abbr gc "git commit -m"
abbr gp git push
abbr gr git log


set -x EDITOR vim
