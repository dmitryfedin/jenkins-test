node('slave-171'){
    stage('Build') {
	git url: 'https://github.com/dmitryfedin/jenkins-test', branch: 'main'
	sh 'npm start'
	input message: 'Finished using the web site? (Click "Proceed" to continue)'
    }
    stage('Test') {
	sh 'echo stop'
    }
}
