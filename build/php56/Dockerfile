ARG os=8.10.20240528
ARG image=php-5.6

FROM aursu/pearbuild:${os}-${image}

RUN dnf -y --enablerepo=bintray-phpcustom install \
        php-pecl-apcu-devel-4.0.11 \
    && dnf clean all && rm -rf /var/cache/dnf /var/lib/rpm/__db*
