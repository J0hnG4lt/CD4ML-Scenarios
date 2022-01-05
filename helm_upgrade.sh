helm upgrade \
    --install -f ./chart/values.yaml \
    --namespace cd4ml \
    --set volumes.minio.local.path="$( pwd )/data" \
    --set volumes.jenkins.local.path="$( pwd )/jenkins_home" \
    cd4ml ./chart