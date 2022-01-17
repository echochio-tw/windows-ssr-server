python3 安裝 SSR
```
pip install shadowsocks
```
运行：
```
ssserver -p 443 -k password -m aes-256-cfb
```
后台运行:
```
sudo ssserver -p 443 -k password -m aes-256-cfb –user nobody -d start
```
停止:
```
sudo ssserver -d stop
```
查看 log:
```
sudo less /var/log/shadowsocks.log
```
说明
```
-p 端口号
-k 密码
-m 加密方式  （rc4-md5，salsa20，chacha20，aes-256-cfb，aes-102-cfb，aes-128-cfb）
-h 查看命令帮助
```
配置文件创建：
```
路径 /etc/shadowsocks.json

{
“server”:”my_server_ip”,
“server_port”:8388,
“local_address”: “127.0.0.1”,
“local_port”:1080,
“password”:”mypassword”,
“timeout”:300,
“method”:”aes-256-cfb”,
“fast_open”: false
}
```
``` 
Name	Explanation
server	the address your server listens
server_port	server port
local_address	the address your local listens
local_port	local port
password	password used for encryption
timeout	in seconds
method	default: “aes-256-cfb”
fast_open	true / false
workers	number of workers, available on Unix/Linux
```
 
运行:
```
ssserver -c /etc/shadowsocks.json
```

后台运行:
```
ssserver -c /etc/shadowsocks.json -d start
ssserver -c /etc/shadowsocks.json -d stop
```
