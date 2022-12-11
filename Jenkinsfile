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
               withSonarQubeEnv(installationName: 'sonar', credentialsId: 'sonar') {
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
        
        
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t marwahadidan/ExamThourayaS2 .'
                }
            }
        }
      
        
        
        
        
          stage('push docker hub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PSW'
                sh 'docker push marwahadidan/ExamThourayaS2'
   
            }
        }
           stage(' docker-compose') {
            steps {
                sh 'docker-compose -f docker-compose.yml up -d'
   
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }  
    }


    
