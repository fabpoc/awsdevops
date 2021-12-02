node {
 
    stage('Clone repository again') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        docker.withServer('tcp://172.31.12.136:2345') {
          def myImage = docker.build('web')
        }
    }
}
