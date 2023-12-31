# This Jenkins file runs node.js project by pipeline on localhost:4000 on slave behind the proxy
### Need to install java 11, npm, make dir for jenkins, openssh, login and pass (or rsa) on the slave

# Docker containers
## Run docker:dind
```
docker run --name jenkins-docker --rm --detach \
  --privileged --network jenkins --network-alias docker \
  --env DOCKER_TLS_CERTDIR=/certs \
  --volume jenkins-docker-certs:/certs/client \
  --volume jenkins-data:/var/jenkins_home \
  --publish 3000:3000 --publish 5000:5000 --publish 2376:2376 \
  docker:dind --storage-driver overlay2
```
## Run Jenkins
### Dockerfile in rep
```
docker build -t jenkins-v0.0.1 .
```
```
docker run \
  --name jenkins-blueocean \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  --volume "$HOME":/home \
  --restart=on-failure \
  --env JAVA_OPTS="-Dhudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT=true" \
  myjenkins-v0.0.1 
```
# Settings
### Go to localhost:8080
if unlock didnot display, use 
```
cd /var/lib/docker/volumes/jenkins-data/secrets/
```
and 
```
cat initialAdminPassword
```
login: admin
### Plugins install by hand in settings
Docker,
Docker pipeline,
Blue Ocean
