## Application setup

Initialization steps:

  1. create application folder

  2. checkout from git the project setup by running:
    git clone https://github.com/attilamh/web-app-setup.git .

  3. Run bin/setup-projects.sh to install all project dependencies that are in other git repositories and build your web application.

  4. Run bin/app-dev.sh to run the application. See the URLs section for more info.

  5. Setup backend development:
      a. Open your Java IDE and set the Maven location to libs/maven. For Eclipse that would be: Preferences -> Maven -> User Settings.
      b. Import Maven project from apps/backend.

  6. Setup frontend development:
      a. Open your front-end IDE and set the projects to the frontend project at apps/frontend.
      b. Make sure the .editorconfig is recognized.


## Start-up using shell scripts

  1. bin/app-dev.sh - Start up the whole application with docker-compose.

  2. bin/fe-bash.sh - To start frontend service for development, just run fe-bash.sh from the bin folder. It will give you a command prompt access to the machine. You can run all npm commands from the folder and work on your project with it. This script is to allow for more control over the dev environment. Basic development needs will work with bin/fe-dev.sh script, see below.

  3. bin/fe-dev.sh - This will start up the frontend service in development mode automatically. With bin/fe-bash.sh, you would need to run the script and then type: 'npm --silent start' at the command line to get the same effect.

  2. bin/be-bash.sh - To start backend service for development, just run be-bash.sh from the bin folder. It will give you a command prompt access to the machine. You can run all maven commands from the folder and work on your project with it. This script is to allow for more control over the dev environment. Basic development needs will work with bin/be-dev.sh script, see below.

  4. bin/be-dev.sh - This will start up the backend service in development mode automatically (Spring boot running). With bin/be-bash.sh, you would need to run the script and then type: 'mvn spring-boot:run' at the command line to get the same effect.

## Application URLs
  1. http://localhost:8089 - web application interface

  2. http://localhost:8089/?useMockApi=true - web application with mock api from front-end

  3. http://localhost:8080 - backend application interface

## Maintenance 

  1. bin/cleanDockerImages.sh - run to clean all docker images from your machine.

  2. bin/cleanDockerContainers.sh - run to clean all docker containers from your machine.

  3. bin/cleanDockerVolumes.sh - run to clean all docker volumes from your machine.

## Current services:

- frontend (official Debian node)
- db (MySQL to be used by the back-end eventually) (official Debian MySQL)
