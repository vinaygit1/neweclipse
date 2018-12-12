FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY /var/lib/jenkins/workspace/DEc-jpestore6/target/myapp*.war /usr/local/tomcat/webapps/myapp.war
