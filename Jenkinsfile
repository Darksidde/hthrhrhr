pipeline {
    agent any

    // Maven Tool'u yapılandırması
    tools {
        maven 'Maven' // Yukarıda belirttiğiniz Maven yükleme adını buraya yazın
    }

    stages {
        stage('Build') {
            steps {
                // Maven'ı çağırarak proje derleme işlemi
                sh 'mvn clean install' // veya 'mvn package', 'mvn compile' gibi başka bir Maven komutu da kullanabilirsiniz
            }
        }
        // Diğer aşamaları buraya ekleyebilirsiniz: test, dağıtım, vs.
    }
    // Post veya diğer seçenekleri de burada ekleyebilirsiniz.
}
