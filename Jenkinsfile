pipeline {
  agent any
  stages {
    stage('First Stage') {
      parallel {
        stage('First Stage') {
          steps {
            echo 'First Stage'
          }
        }
        stage('Parallel Stage') {
          steps {
            echo 'Parallel Stage'
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
        echo 'Finish Stage'
      }
    }
  }
}