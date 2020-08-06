pipeline {
  agent any
  stages {
    stage('Build Stage') {
      steps {
        sh './jenkins/build.sh'
      }
    }
    stage('Test Backend Stage') {
      parallel {
        stage('Test Backend Stage') {
          steps {
            sh './jenkins/test-backend.sh'
          }
        }
        stage('Test Frontend Stage') {
          steps {
            sh './jenkins/test-frontend.sh'
          }
        }
        stage('Performance Test Stage') {
          steps {
            sh './jenkins/test-performance.sh'
          }
        }
        stage('Analysis Static Stage') {
          steps {
            sh './jenkins/test-static.sh'
          }
        }
      }
    }
    stage('Deploy Stage') {
      steps {
        sh './jenkins/deploy.sh '
      }
    }
  }
}