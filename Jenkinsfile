@Library('my-shared-library') _

pipeline {
    agent any

    parameters{

        choice(name: 'action', choices: 'create\ndelete', description: 'Choose create/Destroy')
        string(name: 'ImageName', description: "name of the docker build", defaultValue: 'cloudl-server')
        string(name: 'ImageTag', description: "tag of the docker build", defaultValue: 'v1')
        string(name: 'DockerHubUser', description: "name of the Application", defaultValue: 'krishgopal37')
    }

    stages{

        stage("Git checkout"){

            when { expression {  params.action == 'create' } }

            steps{
                gitCheckout(
                    branch: "main",
                    url: "https://github.com/vikash-kumar01/mrdevops_java_app.git"
            )
            }
            }

        stage('Docker Image Build'){
         when { expression {  params.action == 'create' } }
            steps{
               script{
                   
                   dockerBuild("${params.ImageName}","${params.ImageTag}","${params.DockerHubUser}")
               }
            }
        }

        
        }
    }