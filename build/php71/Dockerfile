ARG centos=7
ARG image=php-7.1

FROM aursu/pearbuild:${centos}-${image}

RUN yum -y --enablerepo=bintray-php71custom install \
        php-pecl-apcu-devel \
    && yum clean all && rm -rf /var/cache/yum /var/cache/dnf
