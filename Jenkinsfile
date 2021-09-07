pipeline {

    agent {
        docker {
            image 'gcr.io/kaniko-project/executor:debug'
            args '-u 0:0  --entrypoint=\'\''
        }
    
    }
    

    //agent any
    environment {
        DOCKER_REGISTRY='https://index.docker.io/v1'
        DOCKER_USERNAME='xinwen0328'
        DOCKER_PASSWORD='t5EwWRjz!'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mkdir -p /kaniko/.docker'
                sh 'echo "{\\"auths\\":{\\"$DOCKER_REGISTRY\\":{\\"username\\":\\"$DOCKER_USERNAME\\",\\"password\\":\\"$DOCKER_PASSWORD\\"}}}" > /kaniko/.docker/config.json'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'hostname'

                script {
                    echo env.GIT_BRANCH
                    sh 'echo $WORKSPACE'

                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'hostname'
            }
        }
    }
}
