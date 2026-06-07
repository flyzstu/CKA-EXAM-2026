# 题目：StorageClass

# 任务
# 1. 创建一个名为 local-storage 的新 StorageClass，provisioner 为 rancher.io/local-path。
#    将 VolumeBindingMode 设置为 WaitForFirstConsumer。不要将该 StorageClass 设为默认值
# 2. Patch 该 StorageClass，使其成为默认 StorageClass
# 3. 确保 local-storage 是唯一的默认 StorageClass
# 不要修改任何现有的 Deployment 或 PersistentVolumeClaim

# 视频链接 - https://youtu.be/di7X7OHn2fc
