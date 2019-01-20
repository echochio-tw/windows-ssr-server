# windows-ssr-server

put file to c:\ssr
exc ssr.vbs

```
C:\>netstat -na |findstr 58888
  TCP    0.0.0.0:58888          0.0.0.0:0              LISTENING
  UDP    0.0.0.0:58888          *:*
```

pass firewall

```
server_port : 58888 
password : tryit 
method : chacha20
protocol : origin
obfs : plain
```
