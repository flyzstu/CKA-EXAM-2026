# CKA 练习题（简化版）

这是一套来自 CKA-PREP 播放列表的 CKA 实战练习题，每道题位于独立目录中，配有环境初始化、验证和清理脚本。

**注意：** 这是一个持续维护中的仓库，可能仍然存在问题或不完善之处。如果你发现问题，尤其是实验环境初始化或验证脚本中的问题，请在 [Issues](https://github.com/flyzstu/CKA-EXAM-2026/issues) 中提交，方便修复。

**备考说明：** 这些题目设计上接近 CKA 考试风格，但并不是考试原题。请深入理解底层概念，并尝试不同场景，这样才能在考试环境中应对变体题。

## 前置条件

- **Kubernetes 集群**（v1.28+）或 [Killercoda CKA Playground](https://killercoda.com/playgrounds/scenario/cka)
- **kubectl**（已配置 kubeconfig 并能访问集群）
- **bash** 5.0+
- **Git**

---

## 目录结构

每道题位于独立的 `Question-<编号>-<主题>/` 目录下，文件组成如下：

```
Question-<编号>-<主题>/
├── LabSetUp.bash        # 初始化实验环境（由 run-question.sh 调用）
├── Questions.bash       # 题目场景说明 + YouTube 讲解链接 + 文档参考
├── SolutionNotes.bash   # 分步解法（需要提示时参考）
├── validate.bash        # 自动验证解法（由 validate-question.sh 调用）
├── cleanup.bash         # 清理资源（由 cleanup-question.sh 调用）
└── *.yaml               # 题目相关的 Kubernetes 资源清单（部分题目有）

scripts/
├── run-question.sh      # 运行指定题目的初始化脚本
├── validate-question.sh # 验证指定题目或全部题目
├── cleanup-question.sh  # 清理指定题目的资源
└── install-codium.sh    # 安装 VSCodium（可选）
```

---

## 使用方法

1. 启动 [Killercoda CKA playground](https://killercoda.com/playgrounds/scenario/cka)，或使用你自己的 Kubernetes 集群。
2. 在实验环境中克隆本仓库：
   ```bash
   git clone https://github.com/flyzstu/CKA-EXAM-2026.git ~/CKA-EXAM-2026
   cd ~/CKA-EXAM-2026
   ```
3. 按题号运行题目初始化脚本：
   ```bash
   scripts/run-question.sh 5
   ```
4. 完成题目任务；如果需要帮助，可以查看 `SolutionNotes.bash`。
5. 验证你的解法：
   ```bash
   scripts/validate-question.sh 5
   ```
6. 完成后清理资源：
   ```bash
   scripts/cleanup-question.sh 5
   ```

---

## 验证解法

每道题都包含一个 `validate.bash` 脚本，它会对你的集群执行自动检查，确认解法是否正确。

### 验证单道题
```bash
# 按题号验证
scripts/validate-question.sh 5

# 按目录名验证
scripts/validate-question.sh Question-5-HPA
```

### 验证所有题目
```bash
scripts/validate-question.sh all
```

脚本会为每项检查输出 `PASS` 或 `FAIL`，最后给出分数汇总。如果所有检查都通过，退出码为 `0`；否则为非零。

---

## 模拟考试桌面（VSCodium）

你可以在 Killercoda 模拟桌面中使用 **VSCodium**（开源版 VS Code）编辑文件，体验接近真实 CKA 考试中的 IDE 环境。

> **注意：模拟桌面环境需要付费 Killercoda 订阅。**
> 如果没有订阅，桌面 GUI 不可用，也无法以图形界面方式启动 VSCodium。

### 安装 VSCodium
```bash
scripts/install-codium.sh
```

### 启动 VSCodium
安装完成后，在仓库目录中启动：
```bash
cd ~/CKA-EXAM-2026
codium --no-sandbox --user-data-dir .
```

这会在当前目录打开 VSCodium，你可以直接浏览和编辑所有题目文件。

---

## 题目列表

| # | 主题 | 目录 | 视频 |
|---|-------|------|-------|
| 1 | MariaDB — 持久卷 | [Question-1-MariaDB-Persistent-volume](Question-1-MariaDB-Persistent-volume/) | https://youtu.be/aXvvc1EB1zg |
| 2 | ArgoCD — 通过 Helm 安装（不安装 CRDs） | [Question-2-ArgoCD](Question-2-ArgoCD/) | https://youtu.be/e0YGRSjb8CU |
| 3 | Sidecar 容器 | [Question-3-Sidecar](Question-3-Sidecar/) | https://youtu.be/3xraEGGQJDY |
| 4 | 资源分配 | [Question-4-Resource-Allocation](Question-4-Resource-Allocation/) | https://youtu.be/ZqGDdETii8c |
| 5 | HPA — HorizontalPodAutoscaler | [Question-5-HPA](Question-5-HPA/) | https://youtu.be/YGkARVFKtmM |
| 6 | CRDs — cert-manager | [Question-6-CRDs](Question-6-CRDs/) | https://youtu.be/SA1DzLQaDJs |
| 7 | PriorityClass | [Question-7-PriorityClass](Question-7-PriorityClass/) | https://youtu.be/CZzxGyF6OHc |
| 8 | CNI 与 NetworkPolicy | [Question-8-CNI-Network-Policy](Question-8-CNI-Network-Policy/) | https://youtu.be/Uc04Ui4x3EM |
| 9 | cri-dockerd | [Question-9-Cri-Dockerd](Question-9-Cri-Dockerd/) | https://youtu.be/ybzo1vXiqjU |
| 10 | 污点与容忍 | [Question-10-Taints-Tolerations](Question-10-Taints-Tolerations/) | https://youtu.be/oy6Mdqt1-jk |
| 11 | Gateway API | [Question-11-Gateway-API](Question-11-Gateway-API/) | https://youtu.be/G9zispvOCHE |
| 12 | Ingress | [Question-12-Ingress](Question-12-Ingress/) | https://youtu.be/sy9zABvDedQ |
| 13 | NetworkPolicy | [Question-13-Network-Policy](Question-13-Network-Policy/) | https://youtu.be/rA8mXYTU0W8 |
| 14 | StorageClass | [Question-14-Storage-Class](Question-14-Storage-Class/) | https://youtu.be/di7X7OHn2fc |
| 15 | Etcd 修复 | [Question-15-Etcd-Fix](Question-15-Etcd-Fix/) | https://youtu.be/IL448T6r8H4 |
| 16 | NodePort Service | [Question-16-NodePort](Question-16-NodePort/) | - |
| 17 | TLS 配置 | [Question-17-TLS-Config](Question-17-TLS-Config/) | - |
| 18 | kubectl patch — 资源限制 | [Question-18-Kubectl-Patch](Question-18-Kubectl-Patch/) | - |
| 19 | 资源分配 v2 — Pod 调度 | [Question-19-Resource-Allocation-v2](Question-19-Resource-Allocation-v2/) | - |
