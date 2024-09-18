### Deploy a Logging stack using Elasticsearch - Fluentd - Kibana (EFK stack)

1. Installation of  Elasticsearch

```
kubectl create namespace efk-logging

helm repo add elastic https://helm.elastic.co

helm repo update 

helm install elasticsearch elastic/elasticsearch -n efk-logging --set persistence.enabled=false,replicas=1

```

2. Installation of Fluentd

```
helm install my-release oci://registry-1.docker.io/bitnamicharts/fluentd

helm repo update 

helm install fluentd bitnami/fluentd -n efk-logging \
  --set elasticsearch.host=elasticsearch-master \
  --set configMap=custom-fluentd-config 
```

3. Installation of Kibana

```
helm install kibana elastic/kibana -n efk-logging \
  --set replicas=1 \
  --set service.type=NodePort
```





