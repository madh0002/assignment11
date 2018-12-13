properties([pipelineTriggers([githubPush()])])
node('linux') {
    stage("Setup") {
       git 'https://github.com/UST-SEIS665/seis665-03-fall-2018-assignment-11-madh0002.git'
       sh 'aws s3 cp s3://madhu-assignment10-bucket/classweb.html /workspace/index.html '
    }
    stage("Build") {
       sh 'ant -f build.xml -v'
    }
    stage("Test") {
       sh 'aws s3 cp /workspace/java-pipeline/dist/*.jar s3://madhu-assignment10-bucket/'
    }
}
