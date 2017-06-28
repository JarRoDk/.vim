# .bashrc
export TERM=xterm-256color        # for common 256 color terminals (e.g.
#gnome-terminal)
export TERM=screen-256color       # for a tmux -2 session (also for screen)
export TERM=rxvt-unicode-256color # for a colorful rxvt unicode session

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

#if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
#	tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
#fi
. ~/.vim/powerline-run.sh
