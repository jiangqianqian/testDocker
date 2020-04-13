# 前言

想要尝试一下 Docker + Travis.ci 所做的一个 demo

- 首先需要下载 [docker](https://www.docker.com/products/docker-desktop), 并在 [docker hub](https://hub.docker.com/)上注册一个账号，需要记住这个账号，因为在配置 .travis.yml 文件时提交到 docker hub 仓库时会用到。

- 然后在 <https://travis-ci.org/> 上登录自己的 github 账号，选择 setting 将列出的需要进行持续集成的仓库名那栏右边的开关打开，并点击 Settings 配置相关的环境变量，即 docker hub 上的用户名 DOCKER_USERNAME: xxx 及密码 DOCKER_PASSWORD: xxx。

# 项目运行

- git push 后
- 就会在 docker hub 上创建一个镜像
- docker pull jiangqianqian/blog:latest 下载这个镜像
- docker container create -p 2233:80 jiangqianqian/blog:latest 创建一个容器
- docker container start 0c28ab79... 启动这个容器
- 输入 localhost:2233 就可以打开环境了
