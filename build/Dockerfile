ARG centos=7
ARG image=php-7.1

FROM aursu/pearbuild:${centos}-${image}

# PHP 7.3 build image based on pcre2-devel
RUN yum -y install \
        pcre-devel \
    && yum clean all && rm -rf /var/cache/yum

RUN yum -y --disablerepo=* --enablerepo=custom install \
        php-pecl-apcu-devel \
    && yum clean all && rm -rf /var/cache/yum
