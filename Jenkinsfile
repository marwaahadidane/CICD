pipeline {
    agent any 
       
    stages {
        stage ('Git') {
            steps {
                
              
                git branch: 'main',
  
    url: 'https://github.com/marwaahadidane/CICD.git'
            }
        }
        stage ('Maven Clean') {
            steps {

                sh 'mvn clean'
            }
        }
        stage ('Maven Compile') {
            steps {

                sh "mvn compile"
            }
        }

        
     stage ('Scan and Build Jar File') {
            steps {
               withSonarQubeEnv(installationName: 'SonarQube Scanner', credentialsId: 'sonar') {
                sh 'mvn clean package sonar:sonar'
                }
            }
        
          
        }

        stage ('Maven Test JUnit') {
            steps {
                echo 'hello world'
            }
        }
        
        
  
        
        
        
        
        stage("Publish to Nexus Repository Manager") {
            steps {
                sh 'mvn deploy'
                    }
                }
    }  
    }


    
