#/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

# check out all other repo-s

# front-end
mkdir -p ../apps/frontend
git clone https://github.com/attilamh/frontend.git ../apps/frontend

mkdir -p ../apps/backend
git clone https://github.com/attilamh/frontend.git ../apps/backend
