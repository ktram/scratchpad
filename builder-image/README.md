# cpp-boost

Create container image to build C++ projects.  This includes the
[Boost](https://www.boost.org/) library.

The [Dockerfile](./Dockerfile) is based on the following two articles:

- [Dockerized build environments for C/C++ projects](https://ddanilov.me/dockerized-cpp-build)
- [Boost C++ LIbrary Docker Container](https://leimao.github.io/blog/Boost-Docker/)

The [Dockerfile.mcr-dev](./Dockerfile.mcr-dev) uses a Microsoft dev container image and
is much larger but contains more tools.  For more information about the image,
refer to the [devcontainers/images](https://github.com/devcontainers/images)
GitHub repository.

## Build and Push Container Image

Use the `Makefile` to build and push the image

```sh
make image
make push-image
```
