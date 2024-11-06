FROM tomcat:9-jdk11-openjdk-slim

ENV APP_HOME=/usr/local/tomcat/webapps/ROOT

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/myapp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8000

CMD ["catalina.sh", "run"]
