#!/bin/bash
docker container prune -f
docker image prune -a -f
docker volume prune -f
docker image list