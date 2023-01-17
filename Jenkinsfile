pipeline {
  agent any
  stages {
    stage('Building') {
      steps {
        sh 'docker build -t nom_image .'
      }
    }
    stage('Testing') {
      steps {
        sh 'python3 -m unittest'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker run -d -p 8080:5000 nom_image'
      }
    }
  }
}