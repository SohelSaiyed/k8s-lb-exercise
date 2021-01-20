#!/usr/bin/env bash

# Exit if any of the intermediate steps fail
set -e

KUBECTL_CONTEXT=$(jq -r '.context')
KUBECTL_CLUSTER=$(kubectl config view -o jsonpath="{.contexts[?(@.name == '$KUBECTL_CONTEXT')].context.cluster}")
KUBECTL_SERVER=$(kubectl config view -o jsonpath="{.clusters[?(@.name == '$KUBECTL_CLUSTER')].cluster.server}")
jq -n --arg server "$KUBECTL_SERVER" '{"server":$server}'
