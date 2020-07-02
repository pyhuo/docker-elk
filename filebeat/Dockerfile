# ARG ELK_VERSION

# https://www.docker.elastic.co/
FROM hyhlinux/filebeat:7.7.1

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>
COPY config/filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN chmod go-w  /usr/share/filebeat/filebeat.yml
USER filebea