pipeline {
  agent any

  environment {
    DOCKERHUB_CREDENTIALS = credentials('asobeeh-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t 123456ceh/dp-alpine:latest .'
      }
    }
    stage('Login') {
	@@ -19,7 +17,7 @@ pipeline {
    }
    stage('Push') {
      steps {
        sh 'docker push 123456ceh/dp-alpine:latest'
      }
    }
  }
	@@ -28,4 +26,4 @@ pipeline {
      sh 'docker logout'
    }
  }
}
