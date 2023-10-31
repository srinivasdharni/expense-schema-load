pipeline {
  agent { label 'workstation'}

  stages {


    stage('Release'){
      when {
        expression { env.TAG_NAME ==~ ".*" }
      }
//      steps {
//        sh 'zip -r frontend-${TAG_NAME}.zip static asset-manifest.json index.html robots.txt'
//        sh 'curl -sSf -u "admin:Admin123" -X PUT -T frontend-${TAG_NAME}.zip "http://artifactory.rdevopsb73.online:8081/artifactory/frontend/frontend-${TAG_NAME}.zip"'
//      }
      steps {
        sh 'docker build -t 624783896224.dkr.ecr.us-east-1.amazonaws.com/expense-schema-load:${TAG_NAME} .'
        sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 624783896224.dkr.ecr.us-east-1.amazonaws.com'
        sh 'docker push 624783896224.dkr.ecr.us-east-1.amazonaws.com/expense-schema-load:${TAG_NAME}'
      }
    }

  }

}
///