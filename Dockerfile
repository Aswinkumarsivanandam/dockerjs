FROM node:14.17.4

USER root
RUN apt-get -y update \
    && apt-get install -y gnupg2 gnupg gnupg1

RUN apt-get install -y wget && apt-get -y update

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y ./google-chrome-stable_current_amd64.deb
# Take the war and copy to webapps of tomcat
# COPY target/newapp.war /usr/local/tomcat/webapps/
