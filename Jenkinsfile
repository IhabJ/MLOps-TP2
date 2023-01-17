pipeline {
  agent any
  stages {
    stage('Building') {
      steps {
        bat 'docker build -t nom_image .'
      }
    }
    stage('Testing') {
      steps {
        bat 'python3 -m unittest'
      }
    }
    stage('Deploy') {
      steps {
        bat 'docker run -d -p 8080:5000 nom_image'
      }
    }
  }
}