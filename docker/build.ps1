# 获取当前目录的上上级目录名称，并转换为小写
$parentDirName = (Get-Item (Get-Item $PSScriptRoot).Parent.FullName).Name.ToLower()

$dockerName = "$parentDirName-env"

# 构建 Docker 镜像，并将容器名称设置为上上级目录名称 + "-env"
docker build -t "$dockerName" .