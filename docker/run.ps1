# 获取当前目录的上上级目录名称，并转换为小写
$parentDirName = (Get-Item (Get-Item $PSScriptRoot).Parent.FullName).Name.ToLower()

$dockerName = "$parentDirName-env"

docker run -itd --rm -v C:\Users\phx10\code\CGraph:/workspace --name $dockerName $dockerName