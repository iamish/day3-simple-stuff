FROM docker.io/websphere-liberty:javaee8
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
USER 1000
RUN chown -R $USER:$USER /my-special-folder && \
    chmod -R /my-special-folder
RUN mkdir /my-special-folder 

COPY Dockerfile /my-special-folder


# Run as the root user
USER 1000

