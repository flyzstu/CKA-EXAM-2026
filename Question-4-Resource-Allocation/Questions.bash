# 题目
# 你正在管理一个运行在 Kubernetes 集群中的 WordPress 应用。
# 你的任务是调整 Pod 的资源 requests 和 limits，以确保应用稳定运行。

# 任务
# 1. 将 wordpress deployment 缩容到 0 个副本
# 2. 编辑 deployment，将节点资源在 3 个 Pod 之间平均分配
# 3. 为每个 Pod 分配公平且相等的 CPU 和内存
# 4. 预留足够的资源余量，避免节点不稳定
# 确保 init container 和主容器使用完全相同的 resource requests 和 limits。
# 完成修改后，将 deployment 扩容回 3 个副本。

# 视频链接 - https://youtu.be/ZqGDdETii8c

# 文档参考
# 提示：手动浏览文档以熟悉其结构
# Concepts -> Configuration -> Resource Management for Pods and Containers
# https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
