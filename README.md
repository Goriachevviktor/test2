# Docker Hello World

This repository contains a small HTML page served by Docker.

## Local Docker Run

Build the image:

```sh
docker build -t docker-hello-world .
```

Run the container:

```sh
docker run -d --name docker-hello-world -p 8080:80 docker-hello-world
```

Open the HTML page:

```sh
http://localhost:8080
```

Stop and remove the container:

```sh
docker stop docker-hello-world
docker rm docker-hello-world
```

## Server Deployment

Target server:

```text
138.16.178.245
```

Test public hostname:

```text
138-16-178-245.sslip.io
```

`sslip.io` automatically points this hostname to `138.16.178.245`.

On the server, clone the repository and run:

```sh
cp .env.example .env
docker compose up -d --build
```

Open:

```text
https://138-16-178-245.sslip.io
```

The project uses a self-signed certificate. The browser will show a security warning because the certificate is not issued by a public certificate authority.

Useful commands:

```sh
docker compose ps
docker compose logs -f
docker compose down
```
