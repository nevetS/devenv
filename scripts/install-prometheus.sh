#!/bin/bash
#==============================================================================
# HEADER
#==============================================================================
# SYNOPSIS
#    install-prometheus.sh /path/to/kube-prometheus-source-repo
#
# DESCRIPTION
#    Installs kube-prometheus stack
#
#
# EXAMPLES
#    ./install-prometheus.sh ~/repos/kube-prometheus
#
#==============================================================================
# IMPLEMENTATION
#    version         install-prometheus.sh /path/to/kube-prometheus-source-repo 0.0.1
#    author          Steve Kallestad
#    license         CC-BY-SA Creative Commons License
#
#==============================================================================
#  HISTORY
#     2023/05/31 : Script creation
# 
#==============================================================================
# END_OF_HEADER
#==============================================================================

$KUBE_PROM_SRC_PATH=$1
# Create the namespace and CRDs, and then wait for them to be available before creating the remaining resources
cd $KUBE_PROM_SRC_PATH
kubectl apply --server-side -f manifests/setup
kubectl wait \
	--for condition=Established \
	--all CustomResourceDefinition \
	--namespace=monitoring
kubectl apply -f manifests/
cd -

#!/bin/sh
helm install \                                                                                                                                                           (kind-tatooine/ingress-nginx)
  prometheus prometheus-community/prometheus \
  --namespace monitoring \
  --version 22.6.2 \
-f kube/prometheus/values.yaml
