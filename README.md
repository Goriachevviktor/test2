# Docker Hello World

Build the image:

```sh
docker build -t docker-hello-world .
```

Run it:

```sh
docker run -d --name docker-hello-world docker-hello-world
```

View the logs:

```sh
docker logs docker-hello-world
```

Stop and remove the container:

```sh
docker stop docker-hello-world
docker rm docker-hello-world
```
