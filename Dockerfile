FROM python:3.6

ENV RCLONE_VERSION=current
ENV ARCH=amd64

RUN apt-get update && apt-get install -y wget unzip \
    && cd /tmp \
    && wget -q http://downloads.rclone.org/rclone-${RCLONE_VERSION}-linux-${ARCH}.zip \
    && unzip /tmp/rclone-${RCLONE_VERSION}-linux-${ARCH}.zip \
    && mv /tmp/rclone-*-linux-${ARCH}/rclone /usr/bin \
    && rm -r /tmp/rclone* \
    && pip install b2

VOLUME ["/root"]

ENTRYPOINT ["bash"]

CMD [""]
