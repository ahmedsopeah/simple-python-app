pipeline { 
    environment { 
        registry = "asobeeh/pythonapp" 
        registryCredential = 'asobeeh' 
        dockerImage = '' 
    }
    agent { label 'sobeehagent' }
    stages {
        stage('build  image') { 
            steps { 
                script { 
                    git branch: 'main', url: 'https://github.com/ahmedsopeah/simple-python-app.git'
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            }
        }

        stage('push  image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                }
            }
        }
        stage('Deploy our image') { 
            steps { 
                script { 
                    sh 'helm upgrade --install simpleapp ./helm/ -f helm/values.yaml -n demo'
                    }
                }
            }
        }
    }
