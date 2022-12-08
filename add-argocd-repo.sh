####################################################################################################################"
# pre-req : 
# - already logged to the OCP cluster
# - port forwarding active : kubectl port-forward svc/openshift-gitops-cntk-server -n openshift-gitops 8080:443
#
# ARG1: user
# ARG2: access token for the gitlab repository
# ARG3: repository URL ( https://gitlab.com/clarinsgroup/hg/eventing/phoenix-build.git )
####################################################################################################################"

#login to argocd
#==========================================================================================================================================
argocd login localhost:8080 --username admin --password $(kubectl -n openshift-gitops get secret openshift-gitops-cntk-cluster -o jsonpath="{['data']['admin\.password']}" | base64 -d ) --insecure

#add the repository
#==========================================================================================================================================
argocd repo add $3  --username $1 --password $2


