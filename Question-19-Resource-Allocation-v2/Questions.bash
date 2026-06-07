# 题目 19：WordPress Deployment - 正确设置 Resource Requests

# 场景：
# relative-fawn 命名空间中有一个 WordPress deployment，包含 3 个副本。

# 任务：
# 编辑 WordPress deployment，使每个 Pod 的 resource requests
# 在 3 个副本之间平均分配节点的可用资源。
# 不需要修改 limits。
