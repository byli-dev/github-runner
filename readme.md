# Github-Runner image for Docker

<!-- badges -->
![](https://img.shields.io/badge/version-2.323.0-brightgreen)

<!-- badges-end -->

This image provides an alternative solution with the official Github-Runner image when running on Docker. The official image does not persist the credentials after a restart, which can be problematic for long-running jobs.
## Usage

```yaml
services:
  github-runner:
    image: github-runner:latest
    container_name: github-runner
    restart: always
    volumes:
    # This binding prevents the need to rebind credentials after a restart
      - ../volumes/github-runner:/home/runner
    # This binding allows the runner to access the Docker socket
      - /var/run/docker.sock:/var/run/docker.sock
    environment:
      REG_TOKEN: "<<<GITHUB_RUNNER_TOKEN>>>"
      NAME: "github-alpine-byli-1"
      WORKDIR: "/home/runner/projects"
      ORGANIZATION: "byli-dev"



