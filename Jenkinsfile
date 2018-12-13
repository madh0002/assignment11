properties([pipelineTriggers([githubPush()])])
node('linux') {
    stage("Setup") {
       git 'https://github.com/madh0002/assignment11.git'
       sh 'aws s3 cp s3://madhu-assignment11-bucket/classweb.html /workspace/index.html '
    }
    stage("Build") {
       sh 'ant -f build.xml -v'
    }
    stage("Test") {
       sh 'aws s3 cp /workspace/java-pipeline/dist/*.jar s3://madhu-assignment10-bucket/'
    }
}
