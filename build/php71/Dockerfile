ARG centos=7.8.2003
ARG image=php-7.1

FROM aursu/pearbuild:${centos}-${image}

RUN yum -y --enablerepo=custom --enablerepo=bintray-php71custom install \
        php-pecl-apcu-devel \
    && yum clean all && rm -rf /var/cache/yum /var/cache/dnf
