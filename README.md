# CKA 练习题（简化版）

这是一套来自 CKA-PREP 播放列表的 CKA 实战练习题。每道题都放在独立目录中，并包含以下 bash 文件：

**注意：** 这是一个持续维护中的仓库，可能仍然存在问题或不完善之处。如果你发现问题，尤其是实验环境初始化或验证脚本中的问题，请提交 issue，方便修复。

**备考说明：** 这些题目设计上接近 CKA 考试风格，但并不是考试原题。请深入理解底层概念，并尝试不同场景，这样才能在考试环境中应对变体题。

- `LabSetUp.bash` — 为题目准备实验环境。
- `Questions.bash` — 题目场景说明以及对应的 YouTube 讲解链接。
- `SolutionNotes.bash` — 需要提示时可参考的分步解法。
- `validate.bash` — 自动验证你的解法是否正确。
- `cleanup.bash` — 清理并删除本题创建的资源。

---

## 使用方法

1. 启动 [Killercoda CKA playground](https://killercoda.com/playgrounds/scenario/cka)，或使用你自己的 Kubernetes 集群。
2. 在实验环境中克隆本仓库：
   ```bash
   git clone https://github.com/markdjones82/CKA-PREP-2025-v2.git ~/CKA-PREP-2025-v2
   cd ~/CKA-PREP-2025-v2
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
cd ~/CKA-PREP-2025-v2
codium --no-sandbox --user-data-dir .
```

这会在当前目录打开 VSCodium，你可以直接浏览和编辑所有题目文件。

---

## 题目列表

| # | 主题 | 视频 |
|---|-------|-------|
| 1 | MariaDB — 持久卷 | https://youtu.be/aXvvc1EB1zg |
| 2 | ArgoCD — 通过 Helm 安装（不安装 CRDs） | https://youtu.be/e0YGRSjb8CU |
| 3 | Sidecar 容器 | https://youtu.be/3xraEGGQJDY |
| 4 | 资源分配 | https://youtu.be/ZqGDdETii8c |
| 5 | HPA — HorizontalPodAutoscaler | https://youtu.be/YGkARVFKtmM |
| 6 | CRDs — cert-manager | https://youtu.be/SA1DzLQaDJs |
| 7 | PriorityClass | https://youtu.be/CZzxGyF6OHc |
| 8 | CNI 与 NetworkPolicy | https://youtu.be/Uc04Ui4x3EM |
| 9 | cri-dockerd | https://youtu.be/ybzo1vXiqjU |
| 10 | 污点与容忍 | https://youtu.be/oy6Mdqt1-jk |
| 11 | Gateway API | https://youtu.be/G9zispvOCHE |
| 12 | Ingress | https://youtu.be/sy9zABvDedQ |
| 13 | NetworkPolicy | https://youtu.be/rA8mXYTU0W8 |
| 14 | StorageClass | https://youtu.be/di7X7OHn2fc |
| 15 | Etcd 修复 | https://youtu.be/IL448T6r8H4 |
| 16 | NodePort Service | - |
| 17 | TLS 配置 | - |
| 18 | kubectl patch — 资源限制 | - |
| 19 | 资源分配 v2 — Pod 调度 | - |
