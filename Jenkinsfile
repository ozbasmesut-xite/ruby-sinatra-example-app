pipeline {
  agent any
  stages {
    stage('release') {
      when {
        branch 'getir'
      }
      steps {
        sh 'make release'
      }
    }
    stage('deploy') {
      when{
        branch 'getir'
      }
      steps {
        sh 'aws ecs update-service --cluster getir --service sinatra-service --force-new-deployment --region eu-west-1'
      }
    }
  }
}

