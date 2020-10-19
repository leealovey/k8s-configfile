# TIDB CLUSTER

## 部署
### 安装`tidb-operator`、`tidb-cluster`和`tidb-admin`
```shell
#!/bin/bash

# ns
kubectl apply -f tidb-ns.yaml

# secret
kubectl apply -f tidb-secret.yaml

# tidb crd
kubectl apply -f tidb-operator-crd.yaml

# using helm3 
helm repo add pingcap https://charts.pingcap.org/
helm install --namespace tidb-admin tidb-operator pingcap/tidb-operator --version v1.1.5


# tidb-cluster
kubectl apply -f tidb-cluster.yaml 
kubectl apply -f tidb-monitor.yaml
```

## 存储和管理
- longhorn

## 资料
- [官方文档](https://docs.pingcap.com/zh/tidb/stable)