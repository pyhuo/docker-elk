#! /bin/bash
docker run  --network="docker-elk_elk" docker-elk_filebeat  setup --index-management -E output.logstash.enabled=false -E 'output.elasticsearch.hosts=["elasticsearch:9200"]'
