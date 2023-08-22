FROM jenkins/jenkins:2.401.3-jdk17
USER root
ENV http_proxy 130.100.7.222:1082
ENV https_proxy 130.100.7.222:1082
ENV JAVA_OPTS=-Dhttp.proxyHost=130.100.8.222 -Dhttp.proxyPort=1082 -Djenkins.install.runSetupWizard=true
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc -x "http://130.100.7.222:1082" \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker.io
USER jenkins
