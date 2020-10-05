FROM redislabs/redisearch:latest

COPY redis.conf .

ENTRYPOINT ["redis-server", "./redis.conf"]
CMD ["--appendonly", "yes", "--loadmodule", "/usr/lib/redis/modules/redisearch.so"]
