# C++ Boost Demo Application

C++ demo application using the Boost library and running in a container.

Create builder container image from the `.devcontainer` directory:

```sh
docker build -f Dockerfile.development -t cpp-boost:1.80.0 .
```

Afterwards, create a container image with the builder container image (this is
to avoid installing Boost and other dependencies multiple times):

```sh
docker build -t boost-app:demo .
```

Run the boost application with:

```sh
docker run --rm -ti boost-app:demo
```
