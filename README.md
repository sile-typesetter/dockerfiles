# Docker Images for SILE & CaSILE

## Plain SILE

[siletypesetter/sile][hub.sile]

To just render documents.

```sh
# Until this is pushed to Docker Hub, you have to make the image yourself
make sile

# Setup an alias to hide the docker arguments than need passed every time
alias sile-docker='docker run --volume "$(pwd):/data" --user "$(id -u):$(id -g)" siletypesetter/sile:v0.10.0 sile'

# Pass SILE an input document and get the PDF back
echo '<sile>lorem ipsum</sile>' > input.xml
sile-docker input.xml
```

## Full CaSILE

[siletypesetter/casile][hub.casile]

For a full publishing pipeline.

  [hub.sile]: https://hub.docker.com/repository/docker/siletypesetter/sile
  [hub.casile]: https://hub.docker.com/repository/docker/siletypesetter/casile
