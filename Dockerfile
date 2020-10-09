FROM tomcat:7.0.93-jre8
MAINTAINER sai
RUN apt-get update
#COPY 
ADD https://team-s3.s3.amazonaws.com/warfile/saiLogin-2.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
