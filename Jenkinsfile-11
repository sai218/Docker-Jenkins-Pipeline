node{
    
    //git cloning //
    stage('git clone'){
        
    git credentialsId: 'sai218', url: 'https://github.com/sai218/Docker-Jenkins-Pipeline.git'
    
    }
    
    // //maven goals-3.6.3//
    // stage('maven targets'){
        
    // def mvnhome = tool name: 'sai-maven-3.6.3', type: 'maven'
    //     sh "${mvnhome}/bin/mvn clean install"
    // }
    
    //maven goals-3.6.2//
    stage('maven targets'){
        
    def MVNHOME = tool name: 'harish-maven-3.6.2', type: 'maven'
        sh "${MVNHOME}/bin/mvn clean install"
    }
    
   
}