# Gilad Task

My Task is to create e2e devops pipeline.

## Installation


## Credit

 Add kube-prometheus-stack from [artifacthub](https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack). You can pull the helm charts by run `helm pull prometheus-community/kube-prometheus-stack --version 48.0.0 --untar`



Deploy the PV:

    kubectl apply -f db-persistent-volume.yaml
Deploy the PVC:

    kubectl apply -f db-volume-claim.yaml

The environment variables are needed by the cluster. Deploy them as follows:
    
    kubectl apply -f db-configmap.yaml

Next, create the deployment and add pods replicas.

    kubectl apply -f db-deployment.yaml

Finaly run the service to expose the cluster
    
    kubectl apply -f db-service.yaml