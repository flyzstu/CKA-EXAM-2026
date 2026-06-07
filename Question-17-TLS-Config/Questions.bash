# 题目：
# nginx-static 命名空间中已有一个 deployment。该 deployment 包含一个支持
# TLSv1.2 和 TLSv1.3 的 ConfigMap，以及一个用于 TLS 的 Secret。

# nginx-static 命名空间中还有一个名为 nginx-static 的 Service，目前正在暴露该 deployment。

# 任务：
# 1. 配置 ConfigMap，使其仅支持 TLSv1.3
# 2. 将该 Service 的 IP 地址添加到 /etc/hosts，并命名为 ckaquestion.k8s.local
# 3. 使用以下命令验证配置是否正常：
    curl -vk --tls-max 1.2 https://ckaquestion.k8s.local # 应该失败
    curl -vk --tlsv1.3 https://ckaquestion.k8s.local # 应该成功

# 视频链接
