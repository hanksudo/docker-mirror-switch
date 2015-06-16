# docker-mirror-switch

Docker hub mirror switch for boot2docker

## Installation

```
# export your DOCKER_REGISTRY_MIRROR env
export DOCKER_REGISTRY_MIRROR=http://xxx.mirror.com
```

## Usage

```bash
./docker-mirror-switch.sh on
./docker-mirror-switch.sh off
```

### link to your bin path

```bash
ln -s ${PWD}/docker-mirror-switch.sh ~/bin/dmirror
```

## Documentation

- [docker - Run a local registry mirror](https://github.com/docker/docker/blob/d409b05970e686993e343d226fae5b463d872082/docs/articles/registry_mirror.md)

### Use DaoCloud as Docker hub mirror to speed up image download in China.
- [DaoCloud](https://www.daocloud.io/)
