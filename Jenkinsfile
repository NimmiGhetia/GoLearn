pipeline {
  agent any
  stages {
    stage('build base image') {
      steps {
        sh 'make all'
      }
    }
    stage('run tests') {
      steps {
        sh 'echo "Run tests"'
      }
    }
  }
}