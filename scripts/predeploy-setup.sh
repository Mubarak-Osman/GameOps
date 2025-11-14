#!/usr/bin/env bash
set -e

mv ~/.kube/config ~/.kube/config.backup || true
minikube start --driver=podman
(cd /Users/mosman02/actions-runner && ./run.sh) &