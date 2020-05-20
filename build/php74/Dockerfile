ARG centos=7.8.2003
ARG image=php-7.4

FROM aursu/pearbuild:${centos}-${image}

RUN yum -y --enablerepo custom --enablerepo=bintray-php74custom install \
        php-pecl-apcu-devel \
    && yum clean all && rm -rf /var/cache/yum /var/cache/dnf
