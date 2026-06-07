# 题目：HPA
# 在 autoscale 命名空间中创建一个名为 apache-server 的 HorizontalPodAutoScaler（HPA）

# 任务
# 1. HPA 必须以 autoscale 命名空间中已有的 apache-deployment deployment 为目标
# 2. 将 HPA 的目标设置为每个 Pod 50% CPU 使用率
# 3. 配置 HPA 最少 1 个 Pod，最多 4 个 Pod
# 4. 将缩容稳定窗口设置为 30 秒

# 视频链接 - https://youtu.be/YGkARVFKtmM

# 文档参考
# 提示：手动浏览文档以熟悉其结构
# (hpa) Tasks -> Run Application -> HorizontalPodAutoscaling Walkthrough
# https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/
# (downscale) Concepts -> Workloads -> Horizontal Pod Autoscaling
# https://kubernetes.io/docs/concepts/workloads/autoscaling/horizontal-pod-autoscale/
