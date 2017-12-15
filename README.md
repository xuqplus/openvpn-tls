# openvpn-docker
openvpn安装脚本

#### 快速开始
* 支持ubuntu, centos, alpine(默认)

* 执行`docker_build`选择OS版本, 填写容器名, 镜像名

* 执行完成后会产生两个新脚本, 用于启动docker容器和生成客户端连接配置(windows和linux两个版本)<br>

#### 不用容器
`source/build` `source/start` `source/gen_client` 可在裸机上使用

#### 资源参考
https://help.ubuntu.com/lts/serverguide/openvpn.html 照猫画虎<br>
https://www.tuicool.com/articles/N3Y3Afv 找了半天nat设置<br>
https://github.com/kylemanna/docker-openvpn 原来在bin/ovpn_run里<br>
https://www.vultr.com 这家500RAM的vps最低价格每月$2.5并且能支付宝<br>
