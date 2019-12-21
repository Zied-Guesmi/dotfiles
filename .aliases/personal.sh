# ------------------------------ #
#         good manners           #
# ------------------------------ #
alias plz="sudo"


# ------------------------------ #
#              misc              #
# ------------------------------ #
alias upd= "sudo apt update"
alias upg="sudo apt -y upgrade"
alias updg="sudo apt update && sudo apt -y upgrade"
alias sourcez="source ~/.zshrc"
alias pingg="ping google.com"
alias tohex=""
alias sshpub="cat ~/.ssh/id_rsa.pub | clipcp"
# alias dud="du -d 1 -h"
# alias duf="du -sh"


# ------------------------------ #
#              vpn               #
# ------------------------------ #
alias nordc="nordvpn connect"
alias nordd="nordvpn disconnect"
alias nords="nordvpn status"


# ------------------------------ #
#             docker             #
# ------------------------------ #
dockerfile() { docker run --rm -v /var/run/docker.sock:/var/run/docker.sock chenzj/dfimage $(docker images --filter=reference=$1 --format "{{.ID}}") }
# docker-compose
alias dk="docker-compose"
# docker container
alias dc="docker container"
alias dcri="docker container run -it"
alias dcrd="docker container run -d"
alias dcei="docker container exec -it"
alias dcls="docker container ls"
alias dclsl="docker container ls -l"
alias dclslq="docker container ls -l -q"
alias dclsa="docker container ls -a"
alias dclsaq="docker container ls -a -q"
alias dcip="docker container inspect --format '{{ .NetworkSettings.IPAddress }}' "
dcrml() {docker container ls -l -q | docker container rm }
dcrma() {docker container ls -a -q | docker container rm }
# docker image
alias di="docker image"
alias dils="docker image ls"
alias dirm="docker image rm"
alias disha="docker image inspect --format='{{ index .RepoDigests 0 }}'"
# docker service
alias ds="docker service"
alias dsip="docker service inspect --format '{{ .NetworkSettings.IPAddress }}' "
# docker network
alias dn="docker network"
# docker volume
alias dv="docker volume"


# ------------------------------ #
#             gradle             #
# ------------------------------ #
alias grdb="./gradlew clean build --refresh-dependencies"
alias grdr="./gradlew bootRun"
alias grdc="./gradlew clean"