properties([pipelineTriggers([githubPush()])])
node('linux') {
    stage("Setup") {
       git 'https://github.com/madh0002/assignment11.git'
       sh 'aws s3 cp s3://madhu-assignment10-bucket/classweb.html ./index.html '
    }
    stage("Build") {
       sh 'docker build -t "classweb:1.0" .'
    }
    stage("Temporary") {
       sh 'docker ps'                       
       sh 'docker ps -q --filter ancestor=classweb1)'
    }
    stage("Test") {
       sh 'docker stop $(docker ps -q --filter ancestor=classweb1)'                
       sh 'docker run -d -p 80:80 --env NGINX_PORT=80 --name classweb1 classweb:1.0 '
       sh 'docker ps'                       
       sh 'curl -s 10.120.1.68'
       sh 'docker stop $(docker ps -q --filter ancestor=classweb1)'                
       sh 'docker ps'               
    }
}
