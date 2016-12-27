#!/bin/bash 
export TERM="xterm-256color"


powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
  if [ -f /usr/lib/python2.6/site-packages/powerline/bindings/bash/powerline.sh ]; then
        . /usr/lib/python2.6/site-packages/powerline/bindings/bash/powerline.sh
elif [ -f /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
        . /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
elif [ -f /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh ]; then
        . /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
fi

