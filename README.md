# bmux
A docker image for running my favorite command line tools

## Installation

Clone this project and from inside the repo run:
```bash
docker-compose run bmux
```
The first time bmux is started, the docker image is automatically built. Tmux is started and zsh is the shell. 
* The Tmux key has been remapped to backtick instead of ctrl-b. Several tmux plugins are enabled.
* The docker socket is shared with the host so all docker commands will be executed by the host. 
* The base image is Alpine and additional packages can be installed with apk.
* Vim is available and the vimrc has details about what plugins are installed.
* The host user's home directory is bind mounted to /work
* The host user's .ssh folder is bind mounted.
