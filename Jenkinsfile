properties([pipelineTriggers([githubPush()])])
node('linux') {
    stage("Setup") {
       git 'https://github.com/madh0002/assignment11.git'
       sh 'aws s3 cp s3://madhu-assignment10-bucket/classweb.html ./index.html '
    }
    stage("Build") {
       sh 'docker build -t "classweb:1.0" .'
    }
    stage("Test") {
       sh 'docker ps'
       sh 'docker run "classweb:1.0" -d -p 80:80 -env NGINX_PORT=80'
    }
}
