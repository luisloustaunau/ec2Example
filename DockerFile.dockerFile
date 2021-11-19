FROM tomcat:8.0-jre8
RUN rm -rf /user/local/tomcat/webapps/*
COPY target/ec2Example-1.0-SNAPSHOT.war /user/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "start"]
