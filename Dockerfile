FROM ubuntu:14.04

RUN apt update -y && apt install -y openvpn easy-rsa iptables
COPY source/* /root/ovpn/
COPY openvpn /etc/openvpn/

EXPOSE 1194/udp

CMD bash /root/ovpn/start
