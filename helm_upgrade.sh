helm upgrade \
    --install -f ./chart/values.yaml \
    --namespace cd4ml \
    --set volumes.minio.local.path="$( pwd )/volumes/minio_data" \
    --set volumes.jenkins.local.path="$( pwd )/volumes/jenkins_home" \
    --set volumes.mlflow.local.path="$( pwd )/volumes/mlflow" \
    --set volumes.elastic.local.path="$( pwd )/volumes/elastic_data" \
    cd4ml ./chart