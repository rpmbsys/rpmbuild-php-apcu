ARG os=8.7.20221112
ARG image=php-8.2

FROM aursu/pearbuild:${os}-${image}

RUN dnf -y --enablerepo=bintray-phpcustom install \
        php-pecl-apcu-devel \
    && dnf clean all && rm -rf /var/cache/dnf /var/lib/rpm/__db*
