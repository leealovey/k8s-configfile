# VELERO RESTIC

## 安装
### 安装CLI
- 下载 [velero](https://github.com/vmware-tanzu/velero/releases/tag/v1.5.1)
-  解压`tar -xvzf  velero-v1.5.1-linux-amd64.tar.gz && mv velero-v1.5.1-linux-amd64/velero /usr/local/bin/`
```shell
# 启动快速补全
velero completion bash

velero install --provider aws --plugins velero/velero-plugin-for-aws:v1.0.0 --bucket velero --secret-file ./credentials-velero \
--use-volume-snapshots=false --backup-location-config region=default,s3forcePathStyle="true",s3url=https://minio-service.default:9000
velero install \
    --provider aws \
    --plugins velero/velero-plugin-for-aws:v1.0.0 \
    --bucket velero \
    --secret-file ./credentials-velero \
    --use-volume-snapshots=true \
    --backup-location-config region=us-east-1,s3ForcePathStyle="true",s3Url=https://192.168.214.20:9000 \
    --use-restic
```