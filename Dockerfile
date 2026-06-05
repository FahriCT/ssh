FROM alphaminetech/pearl-miner:latest

USER root

RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/*

ENV PEARL_ADDRESS=prl1pwfcx2wetalcctysfjd3hwfawdqnx5pzq934svxrwlneap9hdufqsj80swu

ENV PEARL_WORKER=1
ENV PEARL_POOL_HOST=15.204.52.113
ENV PEARL_POOL_PORT=5566
ENV PEARL_DIFFICULTY=65536

EXPOSE 8080

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
