pipeline {
    agent any

    stages {
      stage('Run Project') {
            agent {
                docker {
                    image 'node:latest'
                    reuseNode true
                }
            }

            steps {
                sh '''
                npm install
                sudo chown -R 111:115 "/.npm"
                ng test --browsers ChromeHeadlessCustom --watch false
                ng build --prod
                '''
            }
        }
    }
   }
