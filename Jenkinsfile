pipeline {
  agent none
  stages {
    stage('Build Stage') {
      agent any
      steps {
        sh './jenkins/build.sh'
        archiveArtifacts(artifacts: 'target/my-app-1.0-SNAPSHOT.jar', allowEmptyArchive: true)
      }
    }
    stage('Test Backend Stage') {
      parallel {
        stage('Tests Stage') {
          agent {
            node {
              label 'centos'
            }

          }
          steps {
            dir(path: 'jenkins/') {
              sh './test-static.sh'
              sh './test-backend.sh'
              sh './test-frontend.sh'
            }

          }
        }
        stage('Performance Test Stage') {
          steps {
            sh './jenkins/test-performance.sh'
          }
        }
      }
    }
    stage('Deploy Stage') {
      steps {
        sh './jenkins/deploy.sh '
      }
    }
    stage('Clean Workspace') {
      steps {
        cleanWs(cleanWhenSuccess: true)
      }
    }
  }
}