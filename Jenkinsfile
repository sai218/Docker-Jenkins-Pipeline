node{
    
    stage('git clone'){
        //cloning git//
        
        git credentialsId: 'sai-git', url: 'https://github.com/sai218/Docker-Jenkins-Pipeline.git', branch: 'master'
    }
    
    stage('maven goals'){
        //mvn goals execution//
        def MVNHome = tool name: 'sai-mvn-3.6.3', type: 'maven'
        sh "${MVNHome}/bin/mvn clean install" 
    }
    
    stage('Build Docker image'){
    //Building Docker Custom Image//    
        sh 'docker build -t sai218/harishtom:1 .'
    
    }
    
    stage('push docker image to docker hub'){
        //docker login//  

    withCredentials([string(credentialsId: 'myhubdocker', variable: 'dockerlogin')]) {

          sh "docker login -u sai218 -p ${dockerlogin}"
    }
        //docker push//
        sh 'docker push sai218/harishtom:1 '
    }
    
    stage('container tom deploy'){
        //docker node connection&running container//
        sshagent(['dockersshlogin']) {
            def dockerruncmd = "docker run --name tom1 -d -p 8081:8080 sai218/harishtom:1 "
        sh "ssh -o StrictHostKeyChecking=no ubuntu@ec2-54-202-188-123.us-west-2.compute.amazonaws.com ${dockerruncmd}"
        }
        
    }
      
}
