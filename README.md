# vscode-server-docker
basiclly shuff this project form https://github.com/cdr/code-server into docker container

default password when building this container 123456

build it with docker 

cd vscode-server-docker
docker build -t vscodeserver .

run it with docker
sudo docker run -it -v"$HOME/save-code":/save-code -v"$HOME/vscode-server-docker/setting":/root/.local/share/code-server -v"$HOME/vscode-server-docker/config.yaml:/root/.config/code-server/config.yaml -p8080:8080 vscodeserver 

