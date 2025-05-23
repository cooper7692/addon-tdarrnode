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
    ffmpeg \
    libavcodec-extra \
    mkvtoolnix \
    handbrake-cli \
    libtesseract-dev  \
    && rm -rf /var/lib/apt/lists/*

#Mkdir /Tdarr 
RUN mkdir -p /tdarr
# Install Tdarr Node
COPY /tdarr/* /tdarr/

RUN curl -L https://storage.tdarr.io/versions/2.17.01/linux_x64/Tdarr_Updater.zip -o /tmp/Tdarr_Updater.zip \
 && unzip /tmp/Tdarr_Updater.zip -d /tdarr \
 && chmod +x /tdarr/Tdarr_Updater

COPY run.sh /run.sh
CMD ["/run.sh"]
