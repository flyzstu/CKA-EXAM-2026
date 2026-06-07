# 题目：污点与容忍

# 任务：
# 1. 给 node01 添加一个 taint，使普通 Pod 无法调度到该节点。
#    key=PERMISSION，value=granted，Type=NoSchedule
# 2. 调度一个 Pod 到 node01，并在 spec 中添加正确的 toleration，使其可以部署

# 视频链接 - https://youtu.be/oy6Mdqt1-jk

# 文档参考
# 提示：手动浏览文档以熟悉其结构
# Concepts -> Scheduling, Preemption and Eviction -> Taints and Tolerations
# https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/
