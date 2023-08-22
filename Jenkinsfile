node('slave-171'){
    stage('Build') {
	git url: 'https://github.com/dmitryfedin/jenkins-test', branch: 'main'
	sh 'forever start index.js'
    }
    stage('Test') {
	sh 'echo all work'
    }
}
