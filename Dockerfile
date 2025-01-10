# Author: Kale06
# Build and use custom image from the link below
# https://github.com/Kale06/java-web-container

FROM java-brimmed-alpine:beta

WORKDIR /tmp
COPY . /tmp/eazydeals

WORKDIR /tmp/eazydeals
RUN gradle build

COPY ./build/libs/eazydeals.war /usr/local/tomcat/webapps/eazydeals.war

CMD ["catalina.sh", "run"]