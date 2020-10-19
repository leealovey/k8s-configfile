# LONGHORN SYSTEM

## 配置相关
### longhorn配置
- 在`longhorn.yaml` 中`numberOfReplicas`需要小于节点数量
- 当备份的时候是需要一个备份地址的，在这里使用了官方的说的新建nfs卷来做备份的
 - backup的`target`设置为`nfs://longhorn-test-nfs-svc.default:/opt/backupstore`

## 部署
### 执行命令
```shell
#!/bin/bash

kubectl apply -f longhorn.yaml
kubectl apply -f nfs-backup.yaml
# 查看端口
kubectl get svc -n longhorn-system
```
### UI 面板
`longhorn-frontend`

## 资料 
- [官方文档(v1.0.2)](https://longhorn.io/docs/1.0.2/)