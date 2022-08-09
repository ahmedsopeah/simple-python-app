pipeline {
    agent   {  dockerfile true}
        stages {
        stage("build image") {
            steps {

                   git branch: 'main', url: 'https://github.com/ahmedsopeah/simple-python-app.git'
                    sh 'ls -ls'

            }
        }
    }
}
