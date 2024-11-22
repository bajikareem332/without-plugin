pipeline
{
    agent any
    stages
    {
        stage('ContinuousDownload')
        {
            steps
            {
                git 'https://github.com/sudarshansw7/mymaven.git'
            }
        }
        stage('ContinuousBuild')
        {
            steps
            {
                sh 'mvn package'
            }
        }
        stage('ContinuousDeployment')
        {
            steps
            {
               sh "scp /var/lib/jenkins/workspace/withoutplugin/webapp/target/webapp.war ubuntu@172.31.17.145:/var/lib/tomcat10/webapps/testapp.war"
            }
        }
        stage('ContinuousTesting')
        {
            steps
            {
               git 'https://github.com/sudarshansw7/myFunctionalTesting.git'
               sh 'java -jar /var/lib/jenkins/workspace/withoutplugin/testing.jar'
            }
        }
         stage('ContinuousDelivery')
        {
            steps
            {
               sh "scp /var/lib/jenkins/workspace/withoutplugin/webapp/target/webapp.war ubuntu@172.31.16.220:/var/lib/tomcat10/webapps/prodapp.war"  
            }
        }
    
        
       
    }
    
}
    
