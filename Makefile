run_jenkins:
	docker run -d --name jenkins \
		-p 8080:8080 \
		-v $$(pwd)/jenkins:/var/jenkins_home:z \
		devops/jenkins

start_jenkins:
	docker start jenkins

bash_jenkins:
	docker exec -ti jenkins /bin/bash

build_jenkins:
	docker build -t devops/jenkins -f Dockerfile /jenkins

show_me_password:
	cat jenkins/secrets/initialAdminPassword