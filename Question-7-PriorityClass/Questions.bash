# 题目
# 你正在一个 Kubernetes 集群中工作，priority 命名空间里已经运行了一个名为 busybox-logger 的 deployment。
# 集群中已经至少存在一个用户定义的 PriorityClass。

# 任务：
# 1. 为用户工作负载创建一个名为 high-priority 的新 PriorityClass。该 class 的 value
# 应该比现有最高的用户定义 PriorityClass 正好小 1
# 2. Patch priority 命名空间中已有的 busybox-logger deployment，使其使用新创建的
# high-priority class

# 视频链接 - https://youtu.be/CZzxGyF6OHc

# 文档参考
# 提示：手动浏览文档以熟悉其结构
# (yaml) Reference -> Command line tool (kubectl) -> kubectl reference -> kubectl create -> kubectl create priorityClass
# https://kubernetes.io/docs/reference/kubectl/generated/kubectl_create/kubectl_create_priorityclass/
# (patch by A-Elfiiky) Tasks -> Manage Kubernetes Objects -> Update API Objects in place using Kubectl patch
# https://kubernetes.io/docs/tasks/manage-kubernetes-objects/update-api-object-kubectl-patch/
