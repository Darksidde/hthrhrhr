pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Maven'ı çağırarak proje derleme işlemi
                script {
                    def mvnHome = tool name: 'Maven', type: 'maven'
                    sh "${mvnHome}/bin/mvn clean install" // Maven'in doğru sürümünü belirtin
                }
            }
        }
        // Diğer aşamaları buraya ekleyebilirsiniz: test, dağıtım, vs.
    }
    // Post veya diğer seçenekleri de burada ekleyebilirsiniz.
}
