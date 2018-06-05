from docker
workdir /root
run apk add --update bash git less ncurses openjdk8 openssh-client python python3 shadow tmux vim zsh
run pip3 install --upgrade pip
run chsh -s /bin/zsh
run pip3 install docker-compose powerline-status
copy oh-my-zsh .oh-my-zsh
copy powerline .config/powerline
copy tmux.conf .tmux.conf
copy vimrc .vimrc
copy zshrc .zshrc
run git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
run vim +PluginInstall +qall
run mkdir /work
workdir /work
entrypoint /usr/bin/tmux
