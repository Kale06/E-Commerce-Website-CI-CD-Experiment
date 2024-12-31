# Server
FROM tomcat:latest

WORKDIR /src/main

COPY /src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080

CMD ["catalina.sh", "run"];