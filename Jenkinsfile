pipeline {
  agent any
  stages {
    stage('Code CheckOut') {
      steps {
        git(url: 'https://github.com/ranjeetgill/neweclipse.git', branch: 'master', poll: true)
      }
    }
    stage('Build Code') {
      steps {
        sh 'mvn -Dmaven.test.failure.ignore=true clean install'
      }
    }
  }
}