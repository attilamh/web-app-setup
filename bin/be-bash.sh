cd "$( dirname "${BASH_SOURCE[0]}" )"
cd ../setup
docker-compose run --service-ports backend /bin/bash

 