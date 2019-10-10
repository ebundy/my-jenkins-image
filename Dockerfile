FROM jenkinsci/blueocean
USER root
#RUN addgroup -S docker-temp  && adduser -S docker-temp -G docker-temp 
#USER docker-temp
RUN apk update
RUN apk add maven
