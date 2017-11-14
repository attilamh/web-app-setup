#/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

# check out all other repo-s and setup docker compose

# checkout front-end
mkdir -p ../apps/frontend
git clone https://github.com/attilamh/frontend.git ../apps/frontend
# copy package.json to fronted docker so install can succeed
cp ../apps/frontend/package.json ../setup/frontend

# TODO
#mkdir -p ../apps/backend
#git clone https://github.com/attilamh/backend.git ../apps/backend

cd ../setup
docker-compose build --no-cache

