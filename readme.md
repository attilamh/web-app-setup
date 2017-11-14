# Application setup

Initialization steps:

  1. create application folder

  2. checkout from git the project setup by running:
    git clone https://github.com/attilamh/web-app-setup.git .

  3. Run bin/setup-projects.sh to install all project dependencies that are in other git repositories.


## Run project using Docker Compose

If you don't have Docker installed yet, there are installation instructions at the end of this readme.

## Using shell scripts

  1. bin/fe-bash.sh - To start frontend service for development, just run fe-bash.sh from the bin folder. It will give you a command prompt access to the machine. You can run all npm commands from the folder and work on your project with it. This script is to allow for more control over the dev environment. Basic development needs will work with bin/fe-dev.sh script, see below.

  2. bin/fe-dev.sh - This will start up the frontend service in development mode automatically. With bin/fe-bash.sh, you would need to run the script and then type: npm start at the command line to get the same effect.

  3. bin/cleanDockerImages.sh - run to clean all docker images from your machine.

  4. bin/cleanDockerContainers.sh - run to clean all docker containers from your machine.

  5. bin/cleanDockerVolumes.sh - run to clean all docker volumes from your machine.

## Using Docker

To start all services, run `docker-compose up`. This will show the output of all the containers combined in the same stream.

This command will create and start all services. The first time it will take a while until creates the containers and downloads all Maven and npm dependencies.

If you're not interested in the output of all this commands you can run
`docker-compose up -d` and then read a the logs of a particular container by running `docker-compose logs <SERVICE_NAME>`.

The services are defined in the file `docker-compose.yml` and the definitions of each container it's inside the docker directory. Example:
`frontend/Dockerfile`.

To run a particular command in a service, please run
`docker-compose exec <SERVICE_NAME> <COMMAND>`.

You can also launch a new instance of a container by running
`docker-compose run <SERVICE_NAME>`.

To pause a service, please run `docker-compose pause <SERVICE_NAME>`. To resume (AKA unpause), please run `docker-compose unpause <SERVICE_NAME>`. Example:
`docker-compose pause frontend` `docker-compose unpause frontend`.

To stop all services, please run `docker-compose stop`. To start them again you can run `docker-compose start`.

To stop and remove containers, you can run `docker-compose down`.

To recreate and rebuild all containers you can run `docker-compose up --build`.

If you change a Dockerfile, you'll have to recreate the container in order to
get the Dockerfile changes applied.

Please run `docker-compose create --build <SERVICE_NAME>`. Example:
`docker-compose create --build nginx`.  Then, restart the container by running
`docker-compose restart <SERVICE_NAME>`. Example: `docker-compose restart
nginx`.


## Current Docker Compose Services:

- frontend (official Debian node)
- db (MySQL to be used by the back-end eventually) (official Debian MySQL)

## Installing Docker

Please install Docker and Docker Compose. Docker Compose only has to be manually installed in Linux as it's already included in Docker for Mac, Docker for Windows and Docker Toolbox.

