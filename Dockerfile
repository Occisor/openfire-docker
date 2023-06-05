FROM openjdk:8-jre-alpine

ENV OPENFIRE_VERSION=4_7_5
ENV OPENFIRE_HOME=/usr/local/openfire
ENV OPENFIRE_DATA_DIR=/var/lib/openfire

RUN apk add --no-cache curl tar \
    && curl -L https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_${OPENFIRE_VERSION}.tar.gz -o /tmp/openfire.tar.gz \
    && tar -xzvf /tmp/openfire.tar.gz -C /tmp \
    && mv /tmp/openfire ${OPENFIRE_HOME} \
    && rm -rf /tmp/openfire.tar.gz \
    && apk del curl tar

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 9090 9091 5222 7777 5269

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]
