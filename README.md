# Docker Images for SILE & CaSILE

## Plain SILE

[siletypesetter/sile][hub.sile]

To just render documents.

```sh
# Until this is pushed to Docker Hub, you have to make the image yourself
make sile

# Pass SILE an input document and get the PDF back
echo "<sile>test file</sile>" > input.xml
docker run --volume "$(pwd):/data --user $(id -u):$(id -g) siletypesetter/sile:v0.10.0 input.xml
```

## Full CaSILE

[siletypesetter/casile][hub.casile]

For a full publishing pipeline.

  [hub.sile]: https://hub.docker.com/repository/docker/siletypesetter/sile
  [hub.casile]: https://hub.docker.com/repository/docker/siletypesetter/casile
