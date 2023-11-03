pipeline {
    agent any

    stages{

        stage("Git checkout"){

            scripts{
                git branch: 'main', url: 'https://github.com/GopalakrishnanSubramani/zocket_cicd.git'
            }
        }
    }
}