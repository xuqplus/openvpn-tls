# openvpn-docker
openvpn安装脚本

#### 快速开始
* `docker_build` 用于生成ca证书, 服务端证书、配置文件<br>
生成证书使用`easy-rsa`, ca、server、client证书的信息可随意填写<br>
server和client具有相同的ca, 默认情况下client的Common Name不能重复<br>

* `docker_start` 用于启动docker容器, 设置nat规则<br>
默认使用`tun`网络模式, 脚本根据server.conf中设置的子网段设置nat规则, 实现外网访问功能<br>

* `docker_gen_client` 用于生成客户端证书及配置文件<br>
需要输入客户端配置文件名称如`client1`和openvpn server的ip或域名<br>
脚本会生成`client1.crt` `client1.key`并根据server.conf生成`client1.conf`以及windows客户端使用的`client1.ovpn`<br>
最后将客户端连接所需要的证书及配置全部打包压缩到`clients/client1.tar.gz`供下载使用<br>

#### 不用容器
`source/build` `source/start` `source/gen_client` 可在裸机上使用

#### 资源参考
https://help.ubuntu.com/lts/serverguide/openvpn.html 照猫画虎<br>
https://www.tuicool.com/articles/N3Y3Afv 找了半天nat设置<br>
https://github.com/kylemanna/docker-openvpn 原来在bin/ovpn_run里<br>
https://www.vultr.com 这家500RAM的vps最低价格每月$2.5并且能支付宝<br>

#### 效果截图
![图片链接失败](https://github.com/xuqplus/openvpn-docker/blob/master/linux.jpg)

![图片链接失败](https://github.com/xuqplus/openvpn-docker/blob/master/windows.jpg)
