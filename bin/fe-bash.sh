#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
cd ../setup
docker-compose run --service-ports frontend /bin/bash
