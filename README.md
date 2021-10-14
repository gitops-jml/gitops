# GitOps exploration
GitOps is a declarative approach to continuous delivery\
that uses Git as the single source of truth for everything (infrastructure and application\
## About Openshift GitOps
built on Argo CD (CNCF project)
## Installing Openshift GitOps
available as an operator in the OperatorHub
```
wget https://github.com/redhat-developer/kam/releases/download/v0.0.40/kam_linux_amd64
chmod +x kam_linux_amd64\ 
mv kam_linux_amd64 /usr/local/bin/kam
```

## Simple use cases
### configuring OCP Console
### deploy a simple application
## Challenges
secrets managements\
order dependent deployments\
avoid duplication (Kustomize/helm)
