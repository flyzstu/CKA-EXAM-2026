# 题目：Sidecar

# 任务
# 更新现有 wordpress deployment，在已有 Pod 中添加一个名为 sidecar 的 sidecar 容器，
# 使用 busybox:stable 镜像。
# 新的 sidecar 容器必须运行以下命令（按考试题目给出的命令）：
"/bin/sh -c tail -f /var/log/wordpress.log"
# 注意：在你的解法中请使用 `tail -F`（大写 F）。它可以在日志轮转和重新创建后继续跟踪日志文件；
# 而 `-f`（小写 f）可能会在日志轮转后漏掉日志。

# 视频链接 - https://youtu.be/3xraEGGQJDY

# 文档参考
# 提示：手动浏览文档以熟悉其结构
# Concepts -> Workloads -> pod -> Sidecar Containers
# https://kubernetes.io/docs/concepts/workloads/pods/sidecar-containers/
