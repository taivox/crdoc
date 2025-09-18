#!/bin/bash
set -e

sed -e 's/apiextensions\.crossplane\.io/apiextensions.k8s.io/g' \
    -e 's/CompositeResourceDefinition/CustomResourceDefinition/g' \
    -e 's/kind: X\([A-Z][a-zA-Z0-9]*\)/kind: \1/g' ecr.yaml > ecr-modified.yaml

go run . --resources ./ecr-modified.yaml --output output.md --toc toc.yaml

rm ecr-modified.yaml