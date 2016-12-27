#!/bin/bash

ln -s ~/.vim/.tmux.conf ~/.tmux.conf 2> /dev/null

chmod u+x ~/.vim/powerline-run.sh 2> /dev/null

echo ". ~/.vim/powerline-run.sh" >> ~/.bashrc 2> /dev/null
