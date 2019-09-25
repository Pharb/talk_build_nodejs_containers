# No Docker Required: Building Node.js Container Images

While Docker is still most popular for packaging and running Node.js apps in containers,
it has security and scalability shortcomings for production systems and build pipelines.
Recently alternatives have emerged to build container images without Docker.
Each of these address common problems: building without elevated privileges,
reproducible results, caching of intermediate layers and scaling CI/CD in larger organizations.

We first introduce the basic structure of a container image and compare the build process for tools supporting Node.js.
After demonstrating their usage, we give guidance for selecting the right tool – which might not always be Docker.

- [33th Munich Node.js User Group Meetup](https://www.meetup.com/de-DE/Munich-Node-js-User-Group/events/264927707/)

## Examples

Here are some different ways to build the same Node.js example app with different tools.

### [docker-build-and-run.sh](docker-build-and-run.sh)

Build Docker image using Docker daemon.
Some best practises are applied and explained, but the build process might not be as secure as desired.

### [docker-buildx-and-run.sh](docker-buildx-and-run.sh)

Use experimental BuildKit integration in Docker CLI version 19.03 to build Dockerfile.

### [makisu-build.sh](makisu-build.sh)

Use Makisu to build Dockerfile within an unprivileged container for better isolation and security.

Exporting the resulting image would require setting up a separate remote image registry to push the image.

### [pack-build-and-run.sh](pack-build-and-run.sh)

Let `pack` create a Docker image by using a matching Cloud Native Buildpack.

The Dockerfile is not used here.

## Help and Support

This repository contains sample code which might be non-functional and not production-ready.

You can open a issue to ask for further help or explanations, but I might not have the time or knowledge to answer everything.

## References

### Docker

- https://github.com/moby/moby/blob/master/image/spec/v1.2.md
- https://docs.docker.com/engine/security/security/#docker-daemon-attack-surface

### Open Container Initiative
- https://github.com/opencontainers
- https://www.opencontainers.org/about/members

### Container Security
- https://kinvolk.io/blog/2018/04/towards-unprivileged-container-builds/

### Node.js
- https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
- https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md

### BuildKit / docker buildx
- https://github.com/moby/buildkit
- https://github.com/docker/buildx#building-with-buildx

### buildah
- https://github.com/containers/buildah

### kaniko
- https://github.com/GoogleContainerTools/kaniko
- https://github.com/tektoncd/pipeline/blob/master/examples/taskruns/taskrun.yaml

### Makisu
- https://github.com/uber/makisu
- https://github.com/uber/makisu/issues/264

### Bazel
- https://github.com/bazelbuild/rules_nodejs
- https://github.com/bazelbuild/rules_docker/blob/master/README.md#nodejs_image
- https://github.com/GoogleContainerTools/distroless/blob/master/examples/nodejs/BUILD

### Cloud Native Buildpacks
- https://github.com/buildpack/pack 

## License
This content of this repository is licensed under [MIT](./LICENSE).
