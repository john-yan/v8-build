# Building and testing V8 using Docker
Docker images for building and testing V8 master code on ppc64le and s390x.

We have 2 types of images, the `base` images which are used for development and the `test` images which are built on top of the base images and are used to build and test V8 commits on Jenkins automatically.

Docker images are hosted on `quay.io`. To pull a base image use:
```
docker pull quay.io/mfarazma/rt-nodejs-build-base-img-ppc64le
```
or
```
docker pull quay.io/mfarazma/rt-nodejs-build-base-img-s390x
```
