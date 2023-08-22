node('slave-171'){
    stage('Build') {
        docker {
	   image 'node'
	}
	sh 'npm install'
    }
    stage('Test') {
        sh '''echo test steps'''
    }
}
