#!/bin/bash
docker rm -v $(docker ps -qa --no-trunc --filter "status=exited")

