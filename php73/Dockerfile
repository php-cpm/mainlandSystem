FROM zougangmu/centos:7
LABEL maintainer="zougangmu@qq.com"

RUN rpm -ivh http://mirrors.aliyun.com/remi/enterprise/remi-release-7.rpm \
  && sed -i 's/rpms\.remirepo\.net\/enterprise/mirrors\.aliyun\.com\/remi\/enterprise/g' /etc/yum.repos.d/remi* \
  && sed -i 's/^#baseurl=/baseurl=/g'  /etc/yum.repos.d/remi* \
  && sed -i 's/^mirrorlist=/#mirrorlist=/g'  /etc/yum.repos.d/remi* \
  && yum install -y yum-utils && yum-config-manager --enable remi-php73 \
  && yum install -y php \
  && yum install -y php-opcache php-fpm \
  php-mysqlnd php-pdo php-bcmath php-pecl-igbinary php-pecl-mysql php-pecl-redis5 \
  php-xml php-sodium php-mbstring \
  php-json php-intl php-gd \
  php-pecl-apcu php-pecl-crypto php-pecl-mcrypt \
  php-pecl-swoole4 \
  php-pecl-molten php-pecl-yac php-pecl-yaconf  php-pecl-seaslog \
  && yum clean all
CMD ["/bin/bash"]
