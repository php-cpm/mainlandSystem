FROM centos:7
LABEL maintainer="zougangmu@qq.com"

# add openresty source
RUN yum install -y http://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm
ADD Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo
ADD epel.repo /etc/yum.repos.d/epel.repo
RUN yum install -y yum-utils && yum clean all

CMD ["/bin/bash"]
