ARG centos=7.9.2009
ARG image=php-8.1

FROM aursu/pearbuild:${centos}-${image}

RUN yum -y --enablerepo=bintray-php8custom install \
        php-pecl-apcu-devel \
    && yum clean all && rm -rf /var/cache/yum /var/cache/dnf
