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

    }
    stage('Push') {
      steps {
        sh 'docker push 123456ceh/dp-alpine:latest'
      }
    }
  }

      sh 'docker logout'
    }
  }
}
