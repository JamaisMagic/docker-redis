# docker-redis

Redis run in docker.

Run

```bash
bash ./run_docker.sh up # for running.

bash ./run_docker.sh stop # for stopping.
```

## Connect via cli

```bash
docker run -it --network webnet --rm redis:7.2.0-alpine redis-cli -h www_redis_normal
```

Checkout [redis](https://hub.docker.com/_/redis)
