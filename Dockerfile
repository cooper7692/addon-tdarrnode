ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache nodejs npm ffmpeg jq unzip wget

RUN addgroup -S tdarr && adduser -S tdarr -G tdarr
WORKDIR /opt/tdarr

RUN wget -O Tdarr_Updater.zip https://github.com/HaveAGitGat/Tdarr/releases/latest/download/Tdarr_Updater_linux_x64.zip && \
    unzip Tdarr_Updater.zip && \
    chmod +x Tdarr_Updater && \
    ./Tdarr_Updater && \
    rm -f Tdarr_Updater Tdarr_Updater.zip && \
    rm -rf /opt/tdarr/Tdarr_Server || true && rm -f /opt/tdarr/Tdarr_Updater || true

RUN chown -R tdarr:tdarr /opt/tdarr

COPY rootfs/ /

RUN chmod +x /etc/services.d/tdarr-node/run /etc/services.d/tdarr-node/finish

USER tdarr

EXPOSE 8266
