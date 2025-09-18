#!/bin/bash
set -e

sed -e 's/apiextensions\.crossplane\.io/apiextensions.k8s.io/g' \
    -e 's/CompositeResourceDefinition/CustomResourceDefinition/g' \
    -e 's/kind: X\([A-Z][a-zA-Z0-9]*\)/kind: \1/g' sample-xrds.yaml > sample-xrds-modified.yaml

go run . --resources ./sample-xrds-modified.yaml --output output.md --toc toc.yaml


rm sample-xrds-modified.yaml