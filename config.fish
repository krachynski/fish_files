source ~/.config/fish/custom.fish

#set -g fish_user_paths "/usr/local/opt/libxml2/bin" $fish_user_paths

if status is-interactive && functions -q git_fzf_key_bindings
	thefuck --alias | source
	starship init fish | source
	git_fzf_key_bindings
	set -x GPG_TTY (tty)
end


# Created by `pipx` on 2023-08-16 14:51:13
set PATH $PATH /home/krachynski/.local/bin
