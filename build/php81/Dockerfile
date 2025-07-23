ARG os=10.0.20250606
ARG image=php-8.1

FROM aursu/pearbuild:${os}-${image}

RUN dnf -y --enablerepo=bintray-phpcustom install \
        php-pecl-apcu-devel \
    && dnf clean all && rm -rf /var/cache/dnf /var/lib/rpm/__db*
