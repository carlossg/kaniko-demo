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
        DOCKER_USERNAME='xinwen0328'
        DOCKER_PASSWORD='t5EwWRjz!'
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                mkdir -p /kaniko/.docker
                AUTH=$(echo -n "${DOCKER_USERNAME}:${DOCKER_PASSWORD}" | base64)
                cat << EOF > /kaniko/.docker/config.json
                   {
                     "auths": {
                     "https://index.docker.io/v1/": {
                     "auth": "${AUTH}"
                     }
                   }
                  }
EOF
                '''
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
