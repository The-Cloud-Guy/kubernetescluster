### Security scanner using : Trivy

1. First, add the Helm repository and list the available charts

```

helm repo add aqua https://aquasecurity.github.io/helm-charts/

helm repo update 
```

2. Installation on the cluster

```
kubectl create namespace trivy-system 

helm install trivy-operator aqua/trivy-operatord  --set="trivy.ignoreUnfixed=true"  -n trivy-system
```

3. See all Kubernetes resources that are available for Trivy

```

kubectl get all -n trivy-system
```


4. Access all the vulnerabilities reports

```
kubectl get vulnerabilityreports --all-namespaces -o wide 

```


