node('slave-171'){
    stage('Build') {
	git url: 'https://github.com/dmitryfedin/jenkins-test', branch: 'main'
	sh 'npm install'
	sh 'npm install forever -g'
	sh 'forever start index.js'
    }
    stage('Test') {
        sh 'curl http://localhost:4000'
	sh 'forever stopall'
    }
}
