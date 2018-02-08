pipeline {
  agent any
  stages {
    stage('Code CheckOut') {
      steps {
        git(url: 'git@github.com:ranjeetgill/neweclipse.git', branch: 'master', poll: true)
      }
    }
  }
}