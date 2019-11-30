ARG centos=7
ARG image=php-7.3

FROM aursu/pearbuild:${centos}-${image}

RUN yum -y --enablerepo=bintray-php73custom install \
        php-pecl-apcu-devel \
    && yum clean all && rm -rf /var/cache/yum /var/cache/dnf
