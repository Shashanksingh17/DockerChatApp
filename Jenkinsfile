pipeline {
	agent any
	stages {
		stage('Clone Repository') {
			steps {
				sh ''' #! /bin/bash
				ssh -i /var/lib/jenkins/.ssh/id_rsa root@52.66.211.242 '
				sudo rm -rf ChatAppPipeline/
				'
				scp -r /var/lib/jenkins/workspace/ChatAppPipeline root@52.66.211.242:
				'''
			}
		}
		stage('Build Image') {
			steps {
				sh ''' #! /bin/bash
				ssh -i /var/lib/jenkins/.ssh/id_rsa root@52.66.211.242 '
				cd ChatAppPipeline/
				docker stop $(docker ps -a -q)
				docker rm $(docker ps -a -q)
				docker rmi -f ChatAppPipeline_chatapp:latest shashanksingh17/chatapp_chat
				docker-compose up -d
				'
				'''
			}
		}
		
	}
	post {
		always {
			echo 'Stage is success'
		}
	}
}
