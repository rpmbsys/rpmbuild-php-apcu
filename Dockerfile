ARG os=10.1.20251126
ARG image=php-8.4

FROM aursu/pearbuild:${os}-${image}

RUN dnf -y install \
        pcre2-devel \
    && dnf clean all && rm -rf /var/cache/dnf

COPY SOURCES ${BUILD_TOPDIR}/SOURCES
COPY SPECS ${BUILD_TOPDIR}/SPECS

RUN chown -R $BUILD_USER ${BUILD_TOPDIR}/{SOURCES,SPECS}

USER $BUILD_USER

ENTRYPOINT ["/usr/bin/rpmbuild", "php-pecl-apcu.spec"]
CMD ["-ba"]
