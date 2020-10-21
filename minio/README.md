# MINIO CLUSTER

# 安装
## Operator
- [krew](https://krew.sigs.k8s.io/docs/user-guide/setup/install/)
- [Tenant operator](https://github.com/minio/operator)

## helm
```shell
 helm install --set mode=distributed,numberOfNode=2,accesskey=minio,secretKey=minio123,persistence.size=10Gi,perisstence.storageClass=longhorn,serviceType=NodePort minio stable/minio -n minio-server
```