pipeline {
  agent any
  stages {
    stage('Build Stage') {
      steps {
        sh './jenkins/build.sh'
      }
    }
    stage('Test Stage') {
      steps {
        sh './jenkins/test-all.sh'
      }
    }
    stage('Deploy Stage') {
      steps {
        sh './jenkins/deploy.sh '
      }
    }
  }
}