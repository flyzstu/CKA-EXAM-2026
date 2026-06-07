# 题目 18 - kubectl patch
#
# 背景：
#   patch-ns 命名空间中存在一个名为 resource-app 的 deployment。
#   当前资源 limits 对预期工作负载来说过低：
#     CPU limit:    200m
#     Memory limit: 256Mi
#
# 任务：
#   只能使用 kubectl patch（不能使用 kubectl edit 或 kubectl apply）：
#   1. 将 nginx 容器的 CPU limit 更新为 500m
#   2. 将 nginx 容器的 Memory limit 更新为 512Mi
#
# 约束：
#   - 必须使用 kubectl patch 完成这些修改
#   - 不要修改 CPU 或 Memory requests
#   - deployment 必须保持可用（2 个副本）
#
# 验证：
#   运行以下命令确认修改正确：
#
#     kubectl get deployment resource-app -n patch-ns \
#       -o jsonpath='{.spec.template.spec.containers[0].resources}' | python3 -m json.tool
#
#   预期输出应显示：
#     "limits": { "cpu": "500m", "memory": "512Mi" }
#     "requests": { "cpu": "100m", "memory": "128Mi" }
#
