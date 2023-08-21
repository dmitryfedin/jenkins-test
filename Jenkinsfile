pipeline {
    stages {
        stage('Init') {
            def dockerHome = tool 'myDocker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"            
	}
    }
}
