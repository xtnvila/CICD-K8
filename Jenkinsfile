pipeline {
    agent any
    tools{
        maven 'maven'
    }
    environment {

        // You must set the following environment variables
        SERVICE_NAME = "imageName"   // This value would be used to tag your docker image and has to match your github repo name  
        REPOSITORY_TAG = "${YOUR_DOCKERHUB_USERNAME}/${SERVICE_NAME}:${BUILD_ID}"
    }
    
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: "https://github.com/${ORGANIZATION_NAME}/${SERVICE_NAME}"]]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t ${REPOSITORY_TAG} .'  
                }
            }
        }
        stage('Push image to hub'){
            steps{
                script{
                    
                    sh 'docker login -u ${YOUR_DOCKERHUB_USERNAME} -p ${YOUR_DOCKERHUB_PWD}'
                    sh 'docker push ${REPOSITORY_TAG}'     
                    }
                     
                }
            }
        }
        stage('Deploy to K8s'){
            steps{
                script{
                    kubernetesDeploy (configs: 'deploymentservice.yaml',kubeconfigId: 'kubeconfig')
                }
            }
        }
    
}    

