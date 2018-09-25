#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
cd ../setup
docker exec -ti $1 /bin/bash
