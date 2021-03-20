# Environment variables for X11 forwarding
#set -x DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
set -x DISPLAY (awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0.0
set -x LIBGL_ALWAYS_INDIRECT 1

#set -x PATH $PATH $HOME/.local/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin

set -x XDG_CONFIG_HOME $HOME/.config
set fish_greeting

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/dan/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

source $XDG_CONFIG_HOME/fish/alias.fish

if status --is-interactive;
  source $XDG_CONFIG_HOME/fish/ish.config.fish;
end
