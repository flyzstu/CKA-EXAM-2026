# 题目：Ingress

# 任务
# 1. 使用名为 echo-service 的 Service 暴露现有 deployment，
#    Service Port 为 8080，type=NodePort
# 2. 在 echo-sound 命名空间中创建一个名为 echo 的新 Ingress 资源，
#    用于 http://example.org/echo
# 3. 可以使用以下命令检查 Service echo-service 是否可用：
curl NODEIP:NODEPORT/echo

# 考试中可能会给出类似以下命令：
# curl -o /dev/null -s -w "%{http_code}\n" http://example.org/echo
# 这需要 Ingress Controller。要让它正常工作，请确保 /etc/hosts 文件中有一条记录，
# 将你的 NodeIP 指向 example.org。

# 视频链接 - https://youtu.be/sy9zABvDedQ
