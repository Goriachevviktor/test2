FROM alpine:3.20

CMD ["sh", "-c", "echo 'Hello, World from Docker!'; tail -f /dev/null"]
