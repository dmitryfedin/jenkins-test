node('slave-171'){
    stage('Build') {
	git url: 'https://github.com/dmitryfedin/jenkins-test', branch: 'main'
    }
    stage('Test') {
	sh 'chmod +x deliver.sh'
	sh './deliver.sh'
        input message: 'Finished using the web site? (Click "Proceed" to continue)'
        sh 'chmod +x kill.sh'
	sh './kill.sh'
    }
}
