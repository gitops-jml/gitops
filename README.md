# GitOps exploration
GitOps is a declarative approach to continuous delivery\
that uses Git as the single source of truth for everything (infrastructure and application\
## About Openshift GitOps
built on Argo CD (CNCF project)
## Installing Openshift GitOps
available as an operator (Red Hat OpenShift GitOps) in the OperatorHub\
Installing the operator will create a default ArgoCD instance and a default project\
![Image](../images/init.jpg)
obtain ArgoCD console pasword : TBD

## Simple use cases
### configuring OCP Console
- create a git repository for infra customizations
- create a new ArcoCD project
### deploy a simple application
## Challenges
secrets managements\
order dependent deployments\
avoid duplication (Kustomize/helm)
