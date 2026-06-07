# 题目：ArgoCD

# 任务
# 使用 Helm 在 Kubernetes 集群中安装 Argo CD，并确保不安装 CRDs
# （CRDs 已经预先安装）。
# 1. 添加官方 Argo CD Helm 仓库，仓库名称为 argocd（https://argoproj.github.io/argo-helm）
# 2. 创建名为 argocd 的命名空间
# 3. 使用 Argo CD chart 版本 7.7.3，为 argocd 命名空间生成 Helm 模板
# 4. 通过正确配置 chart，确保 CRDs 不会被安装
# 5. 将生成的 YAML manifest 保存到 /root/argo-helm.yaml

# 注意：Helm 的 `--skip-crds` 参数并不能可靠地阻止所有 chart 安装 CRD。
# 某些 chart（例如 argo-cd）会把 CRD 作为普通模板打包，并通过 chart value 控制。
# 提示：查找 argo-cd chart 中的 crds value，并将其设置为 false，以阻止安装 CRD。

# 视频链接 - https://youtu.be/e0YGRSjb8CU
