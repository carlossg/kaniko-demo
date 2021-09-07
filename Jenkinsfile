pipeline {

    agent {
        docker {
            image 'gcr.io/kaniko-project/executor:debug'
            args '--entrypoint=\'\''
        }
    
    }
    

    //agent any
    environment {
        DOCKER_REGISTRY                 = 'foo.bar'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo env.BRANCH_NAME
                echo env.SERVICE_NAME
                echo env.JOB_NAME
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'

                script {
                    echoe env.GIT_BRANCH
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
