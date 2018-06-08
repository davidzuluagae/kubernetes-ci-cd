FROM jenkins/jenkins:latest
USER root
#Installing Docker
RUN apt-get update && apt-get install curl software-properties-common apt-transport-https ca-certificates -y; \
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -;\
add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/debian  $(lsb_release -cs) stable";\
apt-get update && apt-get install docker-ce -y
USER jenkins
