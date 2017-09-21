# Matrix setup

## Dealing with git submodules

This git repo contains other git repos inside (AKA submodules).

When cloning, please run:

    git clone --recursive ssh://git@bitbucket.web.com:7999/neo2/setup.git

to also get the submodules. 

**WARNING:** these submodules will be outdated. Git submodules are fixed to a
particular commit.


To pull/update to the latest commits in each submodule, please run:

    git submodule update --remote --merge

If you want to switch to the master branch in all your repos, please run:

    git submodule foreach git checkout master

## Run project using Docker Compose

If you don't have Docker installed yet, there are installation instructions at
the end of this readme.

To start all services, run `docker-compose up`. This will show the output of
all the containers combined in the same stream.

This command will create and start all services. The first time it will
take a while until creates the containers and downloads all Maven and npm
dependencies.

If you're not interested in the output of all this commands you can run
`docker-compose up -d` and then read a the logs of a particular container by
running `docker-compose logs <SERVICE_NAME>`.

The services are defined in the file `docker-compose.yml` and the definitions of
each container it's inside the docker directory. Example:
`frontend/Dockerfile`.

To run a particular command in a service, please run
`docker-compose exec <SERVICE_NAME> <COMMAND>`.
Example: `docker-compose exec cdn gulp --tasks`.

You can also launch a new instance of a container by running
`docker-compose run <SERVICE_NAME>`.

To pause a service, please run `docker-compose pause <SERVICE_NAME>`. To
resume (AKA unpause), please run `docker-compose unpause <SERVICE_NAME>`. Example:
`docker-compose pause frontend` `docker-compose unpause frontend`.

To stop all services, please run `docker-compose stop`. To start them again you
can run `docker-compose start`.

To stop and remove containers, you can run `docker-compose down`.

To recreate and rebuild all containers you can run `docker-compose up --build`.

If you change a Dockerfile, you'll have to recreate the container in order to
get the Dockerfile changes applied.

Please run `docker-compose create --build <SERVICE_NAME>`. Example:
`docker-compose create --build nginx`.  Then, restart the container by running
`docker-compose restart <SERVICE_NAME>`. Example: `docker-compose restart
nginx`.


## Current Docker Compose Services:

- db (MySQL only used by the builder right now) (official Debian MySQL)
- frontend (official Debian node)

## Installing Docker

Please install Docker and Docker Compose. Docker Compose only has to be manually
installed in Linux as it's already included in Docker for Mac, Docker for
Windows and Docker Toolbox.

- For linux: <https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-using-the-repository> then
- install Docker Compose following the step 4 of [this
- instructions](https://docs.docker.com/compose/install/). For macOS:
- <https://docs.docker.com/docker-for-mac/install/> For Windows 10 Pro+:
- <https://docs.docker.com/docker-for-windows/install/> For Windows 7, Windows
- 8, Windows 10 Home: <https://docs.docker.com/toolbox/overview/>

Windows 7, 8, 10 Home users, by using Docker Toolbox, will have to use the IP
address of the Docker Machine. The IP address of the Docker Machine is
usually 192.168.99.100. You can find out what it's your Docker Machine IP by
running `docker-machine ls`. Please also be aware that you might have to
changes preferences in your VirtualBox virtual machine (e.g. increase assigned
memory, change the shared directory location, etc.).
