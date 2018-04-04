yum install -y yum-utils \
               device-mapper-persistent-data \
               lvm2

yum-config-manager  --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce

# install docker machine
base=https://github.com/docker/machine/releases/download/v0.14.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  sudo install /tmp/docker-machine /usr/local/bin/docker-machine
