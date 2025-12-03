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
        setps {
          echo 'code is build successfully'
    }
}
