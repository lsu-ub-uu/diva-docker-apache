ARG CORA_DOCKER_VERSION=toBeSet
FROM cora-docker-apache:${CORA_DOCKER_VERSION}

# Include vhost conf
COPY files/apache/cora-vhosts.conf /usr/local/apache2/conf/extra/cora-vhosts.conf
RUN echo "Include conf/extra/cora-vhosts.conf" >> /usr/local/apache2/conf/httpd.conf

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
