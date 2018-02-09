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
        sh 'mvn -Dmaven.test.failure.ignore=true install'
      }
    }
    stage('Deploy WAR') {
      steps {
        sh 'sudo cp target/myapp.war /usr/share/tomcat/webapps/'
      }
    }
    stage('Deploy war2') {
      steps {
        sh 'sshpass -p \'admin@123\' scp target/myapp.war root@ec2-13-127-171-255.ap-south-1.compute.amazonaws.com:/usr/share/tomcat/webapps/'
      }
    }
  }
}