FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://tailscale.com/install.sh | sh
RUN mkdir -p /var/lib/tailscale

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
