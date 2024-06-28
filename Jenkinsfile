pipeline{
    agent any
    stages{
        stage('Python virtual env setup'){
            steps{
                sh '''
                    chmod +x envsetup.sh
                    ./envsetup.sh
                '''
            }
        }
        stage('Setup Gunicorn Setup'){
            steps{
                sh '''
                    chmod +x gunicorn.sh
                    ./gunicorn.sh
                '''
            }
        }
        stage('Setup Nginx'){
            steps{
                sh '''
                    chmod +x nginx.sh
                    ./nginx.sh
                '''
            }
        }
        // stage('Build'){
        //     steps{
        //         echo 'Building the project'
        //     }
        // }
        // stage('Test'){
        //     steps{
        //         echo 'Testing the project'
        //     }
        // }
        // stage('Deploy'){
        //     steps{
        //         echo 'Deploying the project'
        //     }
        // }
    }
}