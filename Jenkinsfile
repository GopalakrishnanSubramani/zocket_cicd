pipeline {
    agent any

    stages{

        stage("Git checkout"){

            steps
            {scripts{
                git branch: 'main', url: 'https://github.com/GopalakrishnanSubramani/zocket_cicd.git'
            }}
        }
    }
}