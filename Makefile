run_jenkins:
	docker run -d --name jenkins \
		-p 8080:8080 \
		devops/jenkins

start_jenkins:
	docker start jenkins

bash_jenkins:
	docker exec -ti jenkins /bin/bash

build_jenkins:
	docker build -t devops/jenkins -f Dockerfile .

show_me_password:
	docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword