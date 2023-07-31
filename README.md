# C++ Boost Demo Application

C++ demo application using the Boost library and running in a container.

Create builder container image from the [builder-image](./builder-image/)
directory.  This has the C++ tooling and additional dependencies, such as Boost.
Additional dependencies could be installed in the .devcontainer Dockerfile, but
having Boost pre-installed saves a significant amount of time.  Additionally,
this image can be used for CI/CD.

Afterwards, create a container image with the demo application using the builder
container image.

```sh
docker build -t boost-app:demo .
```

Run the boost application with:

```sh
docker run --rm -ti boost-app:demo
```

## Development

For a richer development experience, this is configured for a [Development
Container](https://containers.dev/).  For example, with Visual Studio Code, open
the directory in a dev container.  The debugger can be used with the `CMake:
Debug` option.
