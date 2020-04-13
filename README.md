# Docker Image with docker-compose

This is a simple Dockerfile with with Docker in it and preinstalled docker-compose.

## Usage

```yaml
stages:
  - build

build:
  image: rhazdon/docker-dc
  services:
    - docker:dind
  script:
    - docker build -t my_app:latest .
    - docker push my_app:latest
```
