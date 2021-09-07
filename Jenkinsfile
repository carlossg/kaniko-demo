pipeline {

   /*agent {
        docker {
            image 'gcr.io/kaniko-project/executor:debug'
        }
    
    }
    */

    agent any
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
                    echo $BRANCH_NMAE
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
