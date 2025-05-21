FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    curl \
    ca-certificates \
    gnupg \
    software-properties-common \
    ffmpeg \
    pciutils \
    vainfo \
    intel-media-va-driver-non-free \
    libva-drm2 \
    libva-x11-2 \
    libva2 \
    && rm -rf /var/lib/apt/lists/*

RUN set -ex \
    && curl -fSL -o /tdarr_node.tar.gz https://github.com/HaveAGitGat/Tdarr/releases/latest/download/Tdarr_Node_Linux.tar.gz \
    && mkdir -p /app/tdarr_node \
    && tar -xzf /tdarr_node.tar.gz -C /app/tdarr_node \
    && rm /tdarr_node.tar.gz


WORKDIR /app/tdarr_node

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
