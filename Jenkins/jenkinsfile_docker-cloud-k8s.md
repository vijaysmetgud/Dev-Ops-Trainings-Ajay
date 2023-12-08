pipeline{
    agent any

    stages {
        stage ("Github Checkout") {
            steps {
                git credentialsId: 'sangita_id_rsa' ,
                url: 'ssh://git@github.ibm.com/CIO-MAP/MIP-Dashboard.git', branch: 'master'
            } //steps
        }

        stage ("Prepare IBM Cloud CLI") {
            steps {
                sh('ibmcloud update -f -q')
                sh('ibmcloud plugin install container-registry -f -q')
                sh('ibmcloud plugin install container-service -f -q')
                sh('ibmcloud plugin list')
            }
        }

        stage ("Build MIP Dashboard App") {
            environment {
                IBMCLOUD_CREDS = credentials('ibm-cloud-cr')
            }
            steps {
                sh('ibmcloud login --apikey ${IBMCLOUD_CREDS_PSW} -r us-south')
                sh('ibmcloud cr login')
                sh('docker build -t us.icr.io/mip-prod-namespace/mipdashboard:${BUILD_NUMBER} -f Dockerfile .')
                sh('docker images')
                sh('docker push us.icr.io/mip-prod-namespace/mipdashboard:${BUILD_NUMBER}')
                sh('ibmcloud cr image-tag us.icr.io/mip-prod-namespace/mipdashboard:${BUILD_NUMBER} us.icr.io/mip-prod-namespace/mipdashboard:latest')
                sh('ibmcloud cr image-list --restrict mip-prod-namespace')
            }
        }

        stage ("Deploy the MIP-Dashboard to prod cluster") {
            environment {
                IBMCLOUD_CREDS = credentials('ibm-cloud-cr')
            }
            steps {
                sh('ibmcloud login --apikey ${IBMCLOUD_CREDS_PSW} -r us-south')
                sh('ibmcloud ks cluster config --cluster map-dal10-16x64-03')
                sh('kubectl config current-context')
                sh('kubectl rollout restart deployment mipdashboard -n mipdashboard')
            } //steps
        }

    }
    
}

