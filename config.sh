#!/bin/bash

ln -s ~/.vim/.tmux.conf ~/.tmux.conf

chmod u+x /.vim/powerline-run.sh

echo ". ~/.vim/powerline-run.sh" >> ~/.bashrc
