#/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"
cd ..

#
# prepare frontend 
#

# checkout frontend
mkdir -p apps/frontend
git clone https://github.com/attilamh/frontend.git apps/frontend

# copy package.json to fronted docker so install can succeed
cp apps/frontend/package.json setup/frontend

#
# prepare backend
#

# checkout backend
mkdir -p apps/backend
git clone https://github.com/attilamh/backend.git apps/backend

# create maven repo folder
mkdir -p libs/maven
ln -s ~/.m2/repository libs/maven/repository 

# update backend settings to proper folder location
projectHome="$( pwd )"
searchString="\\$\\{project\\.home\\}"
# this command is Mac specific. You might need to update it for Linux or Cygwin
sed -i -e -E "s#${searchString}#$projectHome#g" setup/backend/settings.ide.xml

cd setup
docker-compose build --no-cache

