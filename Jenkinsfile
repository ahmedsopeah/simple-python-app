pipeline { 
    environment { 
        registry = "asobeeh/pythonapp" 
        registryCredential = 'asobeeh' 
        dockerImage = '' 
    }
    agent { label 'sobeehagent' } 
    stages { 
        stage('Building our image') { 
            steps { 
                script { 
                    git branch: 'main', url: 'https://github.com/ahmedsopeah/simple-python-app.git'
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }

        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
    }
}
