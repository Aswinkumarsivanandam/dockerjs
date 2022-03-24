pipeline {
    agent any

    stages {
      stage('Run Project') {
            agent {
                docker {
                    image 'node:14.17.4'
                    reuseNode true
                }
            }

            steps {
                sh '''
                npm install
                ng test --browsers ChromeHeadlessCustom --watch false
                ng build --prod
                '''
            }
        }
    }
   }
