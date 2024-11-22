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
       
    }
    
    post
    {
        success
        {
            input message: 'Need approval from the DM!', submitter: 'srinivas'
               deploy adapters: [tomcat9(credentialsId: 'bfb67f1d-2f4e-430c-bb8d-30584116bd00', path: '', url: 'http://172.31.50.204:9090')], contextPath: 'prod1', war: '**/*.war'
        }
        failure
        {
            mail bcc: '', body: 'Continuous Integration has failed', cc: '', from: '', replyTo: '', subject: 'CI Failed', to: 'selenium.saikrishna@gmail.com'
        }
       
    }
    
    
    
    
    
    
}
