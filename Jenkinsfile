pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {

        // Must be built & installed FIRST — all other services depend on this local artifact.
        // The published version (io.github.haphong463:common-lib:1.0.7) on Maven Central is
        // outdated and is missing fields added locally (e.g. variantId in OrderItemDTO).
        stage('Install common-lib') {
            steps {
                sh '''
                    cd common-lib
                    mvn clean install -DskipTests
                '''
            }
        }

        stage('Build Order Service') {
            steps {
                sh '''
                    cd order-service
                    mvn clean package -DskipTests
                '''
            }
        }

        stage('Build Product Service') {
            steps {
                sh '''
                    cd product-service
                    mvn clean package -DskipTests
                '''
            }
        }

        stage('Build Payment Service') {
            steps {
                sh '''
                    cd payment-service
                    mvn clean package -DskipTests
                '''
            }
        }

        stage('Build Email Service') {
            steps {
                sh '''
                    cd email-service
                    mvn clean package -DskipTests
                '''
            }
        }

        stage('Build Identity Service') {
            steps {
                sh '''
                    cd identity-service
                    mvn clean package -DskipTests
                '''
            }
        }

        stage('Build API Gateway') {
            steps {
                sh '''
                    cd api-gateway
                    mvn clean package -DskipTests
                '''
            }
        }

        stage('Build Service Registry') {
            steps {
                sh '''
                    cd service-registry
                    mvn clean package -DskipTests
                '''
            }
        }
    }

    post {
        success {
            echo 'All microservices built successfully!'
        }
        failure {
            echo 'Build failed. Check the logs above for details.'
        }
    }
}
