# Server
FROM tomcat:latest

#Download and copy the jakarta servlet api
RUN curl -O https://repo.maven.apache.org/maven2/jakarta/servlet/jakarta.servlet-api/5.0.0/jakarta.servlet-api-5.0.0.jar

#Back-end
COPY build/classes/com/eazydeals /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/com/eazydeals/

#Front-end
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

#Move module to lib
RUN cp jakarta.servlet-api-5.0.0.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/


EXPOSE 8080

CMD ["catalina.sh", "run"];