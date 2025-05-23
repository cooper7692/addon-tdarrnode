ARG BUILD_FROM
FROM ${BUILD_FROM}

LABEL maintainer="Cooper7692"

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    nodejs \
    npm \
    jq \
    bash \
    && mkdir -p /tdarr \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L https://storage.tdarr.io/versions/2.17.01/linux_x64/Tdarr_Updater.zip -o /tmp/Tdarr_Updater.zip \
 && unzip /tmp/Tdarr_Updater.zip -d /tdarr \
 && chmod +x /tdarr/Tdarr_Updater \
 && rm /tmp/Tdarr_Updater.zip

COPY run.sh /run.sh
CMD ["/run.sh"]
