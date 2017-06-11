FROM ubuntu:16.04

ENV dl_fldigi_git_url https://github.com/jamescoxon/dl-fldigi

RUN set -ex && \
    apt-get update && \
    apt-get install -y git && \
    apt-get build-dep -y fldigi && \

WORKDIR /tmp
RUN set -ex && \
    git clone $dl_fldigi_git_url && \
    cd dl-fldigi && \
    git submodule init && \
    git submodule update && \
    automake && \
    ./configure && \
    make && \
    make install && \
    cd /tmp && \
    rm -rf dl-fldigi

RUN set -ex && \
    apt-get purge -y --auto-remove git

ENTRYPOINT ["/usr/bin/dl-fldigi"]
