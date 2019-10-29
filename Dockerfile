FROM jenkins/jenkins:lts
MAINTAINER zuorn "zuorn@qq.com"
ENV REFRESHED_AT 2019-10-15

USER root

RUN echo '' > /etc/apt/sources.list.d/jessie-backports.list \
  && echo "deb http://mirrors.aliyun.com/debian jessie main contrib non-free" > /etc/apt/sources.list \
  && echo "deb http://mirrors.aliyun.com/debian jessie-updates main contrib non-free" >> /etc/apt/sources.list \
  && echo "deb http://mirrors.aliyun.com/debian-security jessie/updates main contrib non-free" >> /etc/apt/sources.list


# 安装 docker 依赖库
RUN apt update && apt install -y libltdl7
