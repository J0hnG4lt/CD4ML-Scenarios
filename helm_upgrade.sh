helm upgrade \
    --install -f ./chart/values.yaml \
    --namespace cd4ml \
    --set volumes.minio.local.path="$( pwd )/data" \
    cd4ml ./chart