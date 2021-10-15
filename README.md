# GitOps exploration
GitOps is a declarative approach to continuous delivery\
that uses Git as the single source of truth for everything (infrastructure and application\
## About Openshift GitOps
built on Argo CD (CNCF project)
## Installing Openshift GitOps
available as an operator (Red Hat OpenShift GitOps) in the OperatorHub\
Installing the operator will create a default ArgoCD instance and a default project\
![Image](./images/init.jpg)\
obtain ArgoCD console pasword:\
`oc extract secret/openshift-gitops-cluster -n openshift-gitops --to=-`

## Simple use cases
### configuring OCP Console
- clone current repository
- create a new ArcoCD application
`cd gitops; oc apply -f argo/ceph/cephApp.yml`
### deploy a simple application (petclinic)
- create a new ArcoCD application\
`cd gitops; oc apply -f argo/apps/PetClinic/PetClinicArgoApp.yml`
![Image](./images/petclinic-outofsync.jpg)
- wait for the application to sync\
![Image](./images/petclinic-sync.jpg)
- find the route in the new namespace and test the application\
![Image](./images/petclinic.jpg)
## Challenges
secrets managements\
order dependent deployments\
avoid duplication (Kustomize/helm)
