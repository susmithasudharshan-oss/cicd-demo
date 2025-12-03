pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('code') {
            steps {
                git branch: 'main', url: 'https://github.com/susmithasudharshan-oss/cicd-demo.git'
                echo 'code is cloned successfully'
            }
        }
        stage('scan') {
            steps {
                echo 'code is scanned successfully'
            }
        }
        stage("build and test"){
            steps{
                sh "docker build -t node-app-test-new1 ."
                echo 'code build completed'
            }
        }
        stage("push"){
            steps{
                withCredentials([usernamePassword(credentialsId:"DockerHubCreds",passwordVariable:"dockerHubPassword",usernameVariable:"dockerHubUsername")]){
                sh "docker login -u ${env.dockerHubUsername} -p ${env.dockerHubPassword}"
                sh "docker tag node-app-test-new1:latest ${env.dockerHubUsername}/node-app-test-new1:latest"
                sh "docker push ${env.dockerHubUsername}/node-app-test-new1:latest"
                echo 'image pushed successfully'
                }
            }
        }
        stage("deploy"){
            steps{
                sh "docker-compose down && docker-compose up -d"
                echo 'deployment completed successfully'
            }
        }
    }
}
