FROM ckan/ckan-base:ckan-2.10.0
#FROM ckan/ckan-base:dev-v2.10

# Set up environment variables
ENV APP_DIR=/srv/app
ENV TZ=UTC
RUN echo ${TZ} > /etc/timezone

ENV EXTENSIONS_DIR=/srv/app/extensions

# Make sure both files are not exactly the same
RUN if ! [ /usr/share/zoneinfo/${TZ} -ef /etc/localtime ]; then \
        cp /usr/share/zoneinfo/${TZ} /etc/localtime ;\
    fi ;

RUN mkdir ${EXTENSIONS_DIR}

COPY setup/install_extensions.sh ${APP_DIR}
COPY extensions/ ${EXTENSIONS_DIR}

RUN . /srv/app/install_extensions.sh

