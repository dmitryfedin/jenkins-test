node('slave-171'){
    stage('Build') {
	git url: 'https://github.com/dmitryfedin/jenkins-test', branch: 'main'
	sh 'npm install'
	sh 'npm start'
    }
    stage('Test') {
        sh 'curl http://localhost:4000'
    }
}
