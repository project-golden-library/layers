#!/usr/bin/env bash

set -xeuo pipefail

layer_name=$1

cd layers/$layer_name
poetry export > requirements.txt

docker image build -f ../../Dockerfile -t $layer_name .
docker container run --name=$layer_name $layer_name
docker container cp $layer_name:/tmp/layer/python .

