ARG BUILD_FROM
FROM ${BUILD_FROM}

LABEL maintainer="Cooper7692"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && apt-get install -y curl gnupg \
 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
 && apt-get install -y nodejs unzip jq bash \
 && rm -rf /var/lib/apt/lists/*

RUN curl -L https://storage.tdarr.io/versions/2.17.01/linux_x64/Tdarr_Updater.zip -o /tmp/Tdarr_Updater.zip \
    && unzip /tmp/Tdarr_Updater.zip -d /tdarr \
    && chmod +x /tdarr/Tdarr_Updater \
    && rm /tmp/Tdarr_Updater.zip

COPY run.sh /run.sh
RUN chmod a+x /run.sh

WORKDIR /tdarr

HEALTHCHECK CMD pgrep Tdarr_Node || exit 1
# Optional
# HEALTHCHECK CMD curl -f http://localhost:8265/ || exit 1
# Optional

CMD [ "/run.sh" ]

