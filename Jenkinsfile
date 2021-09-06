pipeline {

   /* agent {
        docker {
            image 'alpine:3.14'
        }
    
    }
    */
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo $JOB_NAME
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}