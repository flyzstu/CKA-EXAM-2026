# 题目：
# 有用户误删了 mariadb 命名空间中的 MariaDB Deployment。该 Deployment
# 原本配置了持久化存储。你的任务是重新创建该 Deployment，
# 并通过复用已有的 PersistentVolume 确保数据被保留。

# 任务
# 已经存在一个可复用的 PersistentVolume，并且集群中只有这一个 PV。
# 在 mariadb 命名空间中创建名为 mariadb 的 PersistentVolumeClaim（PVC），规格如下：
# Access Mode = ReadWriteOnce
# Storage = 250Mi
# 编辑位于 ~/mariadb-deploy.yaml 的 MariaDB Deployment 文件，使其使用上一步创建的 PVC。
# 将更新后的 Deployment 文件应用到集群。
# 确保 MariaDB Deployment 正在运行且状态稳定。

# 视频链接 - https://youtu.be/aXvvc1EB1zg

# 文档参考
# 提示：手动浏览文档以熟悉其结构
# Concepts -> Storage -> Persistent Volumes
# https://kubernetes.io/docs/concepts/storage/persistent-volumes/
