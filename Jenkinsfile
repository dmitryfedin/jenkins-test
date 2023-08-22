node('slave-171'){
    agent {
        docker {
            image 'node'
            args '-u root'
        }
    }
    stage('Build') {
        sh 'npm install'
    }
    stage('Test') {
        sh '''echo test steps'''
    }
}
