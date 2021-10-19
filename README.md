# GitOps exploration
GitOps is a declarative approach to **continuous delivery** that uses Git as the single source of truth for everything (infrastructure and application)\
![Image](./images/DeliveryModel.png)

## About Openshift GitOps
**Openshift GitOps** is RedHat implementation framework for GitOps, built on **Argo CD** (CNCF project)

## Concepts & Architecture
- project
- application

## Installing Openshift GitOps
- Openshift GitOps is available as an operator (**Red Hat OpenShift GitOps**) in the OperatorHub
![Image](./images/Operator.jpg)

- Installing the operator will create a default ArgoCD instance and a default project

![Image](./images/init.jpg)
- obtain ArgoCD console pasword:\
`oc extract secret/openshift-gitops-cluster -n openshift-gitops --to=-`

- open the ArgoCD console in your browser:\
you can use the menu link that was added by the operator on top of OCP console\
![Image](./images/ArgoCDlink.jpg)

## Simple use cases

### Pre-req
- fork and then clone the current repository in your environment

### UC1: Add a link to the OCP Console
TBD

### UC2: Deploy a simple application (petclinic)
- create a new ArcoCD application\
`cd gitops; oc apply -f argo/apps/PetClinic/PetClinicArgoApp.yml`
![Image](./images/petclinic-outofsync.jpg)
- wait for the application to sync and watch the resources creation from the ArgoCD console\
![Image](./images/petclinic-sync.jpg)
- find the route in the new namespace and test the application\
![Image](./images/petclinic.jpg)
- try to scale the application and observe that ArgoCD synchronize the application back to the stage defined in Git

### UC3: Add rook-ceph storage to the cluster
- look at [cephApp.yml](./argo/config/ceph/cephApp.yml): this file defines a Application CRD for ArgoCD, that will use the content of https://github.ibm.com/jm-lafont/gitops/infra/ceph folder (yaml manifests) to create and synchronize resources in the current OCP cluster
- create a new ArcoCD application from a yaml file\
`cd gitops; oc apply -f argo/ceph/cephApp.yml`
- sync the new application
- wait for the sync to terminate and observe the new resources from the console

### Deploy in a new namespace, by avoiding yaml duplication (Kustomize)

### IBM implementation for deploying Cloud Paks

## Challenges
secrets managements\
security\
order dependent deployments\
avoid duplication (Kustomize/helm)\
objects manualy added and not described in app are not sync
