
FROM ghcr.io/hassio-addons/debian-base:7.8.3

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

RUN curl -L https://storage.tdarr.io/versions/2.17.01/linux_x64/Tdarr_Updater.zip -o /tmp/Tdarr_Updater.zip 
RUN  unzip /tmp/Tdarr_Updater.zip -d /tdarr 
RUN  chmod +x /tdarr/Tdarr_Updater 
RUN  rm /tmp/Tdarr_Updater.zip

COPY run.sh /run.sh
RUN chmod a+x /run.sh

WORKDIR /tdarr

CMD [ "/run.sh" ]
