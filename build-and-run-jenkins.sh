docker build -t my-jenkins . 

docker run \
  -u root \
  -d \
  --name=my-jenkins \
  --network='host' \
  --restart=unless-stopped \
  -e JENKINS_OPTS='--httpPort=8081' \
  -e JAVA_OPTS='-Djava.util.logging.config.file=/var/jenkins_home/logging.properties' \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  my-jenkins:latest

