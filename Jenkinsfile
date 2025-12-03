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
        stage('build') {
            steps {
                echo 'code is build successfully'
            }
        }
        stage('test') {
            steps {
                echo 'test is sucessfully completed'
            }
        }
        stage('deploy') {
            steps {
                echo 'code is deployed successfully'
            }
        }
    }
}
