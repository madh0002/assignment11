properties([pipelineTriggers([githubPush()])])
node('linux') {
    stage("Setup") {
       git 'https://github.com/madh0002/assignment11.git'
       sh 'aws s3 cp s3://madhu-assignment10-bucket/classweb.html /workspace/index.html '
    }
    stage("Build") {
       sh 'docker build -t "classweb:1.0" .'
       sh 'docker image ls'
    }
    stage("Test") {
       sh 'aws s3 cp /workspace/java-pipeline/dist/*.jar s3://madhu-assignment10-bucket/'
    }
}
