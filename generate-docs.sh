#!/bin/bash
set -e

sed -e 's/apiextensions\.crossplane\.io/apiextensions.k8s.io/g' \
    -e 's/CompositeResourceDefinition/CustomResourceDefinition/g' ecr.yaml > ecr-modified.yaml

go run . --resources ./ecr-modified.yaml --output output.md

rm ecr-modified.yaml