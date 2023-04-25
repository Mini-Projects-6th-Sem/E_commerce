mkdir -p /home/$USER/jenkins
chmod 777 /home/$USER/jenkins
docker build -t yoyo/jenkins .
docker run -d -p 8080:8080 -v /home/$USER/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock  yoyo/jenkins
