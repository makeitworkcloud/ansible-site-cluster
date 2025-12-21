#!/bin/bash
argocd login --skip-test-tls --insecure --username admin --password "$(oc get secret openshift-gitops-cluster -n openshift-gitops -o jsonpath='{.data.admin\.password}' | base64 -d)" $(sops decrypt secrets/secrets.yaml | grep ^argocd_url | awk '{print $2}')
