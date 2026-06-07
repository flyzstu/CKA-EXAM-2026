# 题目
# 你有一个已经部署在 Kubernetes 集群中的 Web 应用，目前使用名为 web 的 Ingress 资源。
# 你必须将现有 Ingress 配置迁移到新的 Kubernetes Gateway API，
# 同时保留现有 HTTPS 访问配置。

# 任务
# 1. 创建名为 web-gateway 的 Gateway 资源，hostname 为 gateway.web.k8s.local，
#    并保留现有名为 web 的 Ingress 资源中的 TLS 和 listener 配置
# 2. 创建名为 web-route 的 HTTPRoute 资源，hostname 为 gateway.web.k8s.local，
#    并保留当前名为 web 的 Ingress 资源中的路由规则
# 注意：集群中已经安装了名为 nginx-class 的 GatewayClass

# 视频链接 - https://youtu.be/G9zispvOCHE
