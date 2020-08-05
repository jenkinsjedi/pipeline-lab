pipeline {
  agent any
  stages {
    stage('First Stage') {
      parallel {
        stage('First Stage') {
          steps {
            sh 'echo First Stage'
          }
        }
        stage('Parallel Stage') {
          steps {
            sleep 5
          }
        }
      }
    }
    stage('Second Stage') {
      steps {
        echo 'Second Stage'
      }
    }
    stage('Finish Stage') {
      steps {
        sh 'ls '
      }
    }
  }
}