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
        bat 'python -m unittest'
      }
    }
    stage('Deploy') {
      steps {
        bat 'docker run -d nom_image'
      }
    }
  }
}