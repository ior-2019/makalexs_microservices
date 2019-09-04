#!/bin/bash
sudo docker run -d --name gitlab-runner --restart always \
-v /srv/gitlab-runner/config:/etc/gitlab-runner \
-v /var/run/docker.sock:/var/run/docker.sock \
gitlab/gitlab-runner:latest

sudo docker exec -it gitlab-runner gitlab-runner register --run-untagged --locked=false \
--non-interactive \
--name my-runner \
--url http://34.77.65.243 \
--registration-token xkEpycKo6xrg5xkeeY7Z \
--tag-list linux,xenial,ubuntu,docker \
--executor docker \
--docker-image alpine:latest
