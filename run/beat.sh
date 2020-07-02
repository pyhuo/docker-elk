#! /bin/bash
docker run -d \
           --name=filebeat \
           --user=root \
           --volume="$(pwd)/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro" \
           --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro" \
           --volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
           --network="docker-elk_elk" \
           docker-elk_filebeat filebeat -e -strict.perms=false
