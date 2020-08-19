# DiscuzX docker镜像

## 官方地址

[官方网站](http://www.discuz.net)

[官方Git地址](https://gitee.com/ComsenzDiscuz/DiscuzX)

## 镜像说明

镜像地址: registry.cn-beijing.aliyuncs.com/codeforfun/discuz:3.4

容器内端口号: 80

### 启动方式

```
docker run -d -p 80:80 registry.cn-beijing.aliyuncs.com/codeforfun/discuz:3.4
```

之后打开浏览器访问 [http://localhost](http://localhost) ，在页面上面配置数据库即可(目前支持MySQL数据库)

### Dockerfile

[Dockerfile](Dockerfile)

### Compose

运行Discuz/MySQL

```
docker-compose up -d
```

修改后编译

```
docker-compose build app && docker-compose up -d
```