ARG os=8.10.20240528
ARG image=php-5.6

FROM aursu/pearbuild:${os}-${image}

RUN dnf -y install \
        pcre-devel \
    && dnf clean all && rm -rf /var/cache/dnf

COPY SOURCES ${BUILD_TOPDIR}/SOURCES
COPY SPECS ${BUILD_TOPDIR}/SPECS

RUN chown -R $BUILD_USER ${BUILD_TOPDIR}/{SOURCES,SPECS}

USER $BUILD_USER

ENTRYPOINT ["/usr/bin/rpmbuild", "php-pecl-apcu.spec"]
CMD ["-ba"]
