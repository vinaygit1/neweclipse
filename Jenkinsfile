pipeline {
  agent any
  stages {
    stage('Code CheckOut') {
      steps {
        git(url: 'https://github.com/ranjeetgill/neweclipse.git', branch: 'master', poll: true)
      }
    }
  }
}