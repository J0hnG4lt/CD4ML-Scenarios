helm install \
    -f ./chart/values.yaml \
    --create-namespace \
    --namespace cd4ml \
    --set volumes.minio.local.path="$( pwd )/volumes/minio_data" \
    --set volumes.jenkins.local.path="$( pwd )/volumes/jenkins_home" \
    --set volumes.mlflow.local.path="$( pwd )/volumes/mlflow" \
    --set volumes.elastic.local.path="$( pwd )/volumes/elastic_data" \
    --set secrets.jenkins.jenkins_admin_password="my53cur3p455w.rd" \
    --set secrets.minio.access_key="my53cur3p455w.rd" \
    --set secrets.minio.secret_key="my53cur3p455w.rd" \
    cd4ml ./chart