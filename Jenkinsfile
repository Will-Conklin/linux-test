pipeline {
    agent {
        docker image 'ubuntu'
    }


    stages {
        stage('Test') {
            steps {
                sh'''
                node --version
                '''
            }
        }
    }
}