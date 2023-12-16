pipeline {
    agent any

    tools {
        // Maven aracını tanımla
        maven 'Maven' // 'Maven' burada tanımlı Maven aracının adıdır, Jenkins arayüzünde belirtilen isimle aynı olmalıdır
    }

    stages {
        stage('Build') {
            steps {
                // Tanımlanan Maven aracını çağırarak proje derleme işlemi
                script {
                    def mvnHome = tool name: 'Maven', type: 'maven'
                    sh "${mvnHome}/bin/mvn clean install" // Maven'in doğru sürümünü belirtin
                }
            }
        }
        // Diğer aşamaları buraya ekleyebilirsiniz: test, dağıtım, vs.
     stage('Generate Reports') {
            steps {
                script {
                    def mvnHome = tool name: 'Maven', type: 'maven'
                    sh "${mvnHome}/bin/mvn surefire-report:report" // Surefire raporlarını oluşturmak için Maven komutu
                    sh "${mvnHome}/bin/mvn site" // Cucumber raporlarını oluşturmak için Maven komutu
                }
            }
        }
    }
    // Post veya diğer seçenekleri de burada ekleyebilirsiniz.
}
