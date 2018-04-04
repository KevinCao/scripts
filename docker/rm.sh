yum remove docker \
           docker-client \
           docker-client-latest \
           docker-common \
           docker-latest \
           docker-latest-logrotate \
           docker-logrotate \
           docker-selinux \
           docker-engine-selinux \
           docker-engine \
           docker-ce

# rm docker-machine
rm $(which docker-machine)

read -p "Del local images?(Y/N) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm -rf /var/lib/docker
fi

read -p "Del all local docker machines?(Y/N) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    docker-machine rm -f $(docker-machine ls -q)
    rm -rf /var/lib/docker
fi
