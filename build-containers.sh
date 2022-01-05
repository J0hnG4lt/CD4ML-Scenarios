# Fail fast on any error
# set -e

# Build all of the containers

echo "Building Jenkins Master"
docker build --rm -f Dockerfile-jenkins -t georvic/cd4ml-build-master:2 .
echo "Building MLFlow"
docker build --rm -f Dockerfile-mlflow -t georvic/cd4ml-mlflow:1 .
echo "Building Model Server"
docker build --rm -f Dockerfile-model -t georvic/cd4ml-model-server:1 .

echo "Building Fluentd"
pushd .
cd fluentd
docker build --rm  -f Dockerfile -t georvic/cd4ml-fluentd:1 .
popd

# Push to DockerHub

docker push georvic/cd4ml-build-master:2
docker push georvic/cd4ml-mlflow:1
docker push georvic/cd4ml-fluentd:1
docker push georvic/cd4ml-model-server:1