node('slave-171'){
    stage('Build') {
	git url: 'https://github.com/dmitryfedin/jenkins-test', branch: 'main'
	sh 'npm start'
    }
    stage('Test') {
	sh 'echo stop'
    }
}
