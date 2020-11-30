pipeline {
  agent any
  tools {
    'org.jenkinsci.plugins.docker.commons.tools.DockerTool' '18.09'
  }

  environment {
    DOCKER_CERT_PATH = credentials('id-for-a-docker-cred')
  }

  stages {
    stage('pretest'){
        steps{
            sh 'docker version'
            sh 'docker-compose --version'
        }
    }
    stage('build base image') {
      steps {
        sh 'docker-compose up'
      }
    }
    stage('run tests') {
      steps {
        sh 'echo "Run tests"'
      }
    }
  }
}