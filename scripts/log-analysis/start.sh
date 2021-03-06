#!/usr/bin/env bash

docker run --rm -d -p "8888:8888" \
-v `pwd`/../../data/logs:/workspace/logs \
-v `pwd`/../../docker/volumes/.aws:/root/.aws \
-v `pwd`/../../data/analysis:/workspace/analysis \
--name loganalysis \
--network sagemaker-local \
 larsll/deepracer-loganalysis:latest

docker logs -f loganalysis