#!/usr/bin/env bash

BUILD_DIR="build"
mkdir -p BUILD_DIR
rm $BUILD_DIR/*.yaml

kustomize build argocd-apps/overlays/sugardon01 -o=$BUILD_DIR
kustomize build pipelinesascode -o=$BUILD_DIR
kustomize build setup -o=$BUILD_DIR
kustomize build tasks -o=$BUILD_DIR