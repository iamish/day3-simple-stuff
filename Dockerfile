FROM docker.io/websphere-liberty:javaee8
mkdir /my-special-folder 
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
COPY Dockerfile
# Run as the root user
USER root
