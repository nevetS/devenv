#!/bin/bash
helm install \
     grafana grafana/grafana \
     --namespace monitoring \
     --version 6.56.6 \
     -f kube/grafana/values.yaml
