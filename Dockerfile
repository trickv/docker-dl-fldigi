FROM ubuntu:16.04

ENV dl_fldigi_git_url https://github.com/jamescoxon/dl-fldigi

RUN set -ex && \
    apt-get update && \
    apt-get install -y git && \
    apt-get build-dep -y fldigi && \
    apt-get install -y automake && \
	apt-get install -y libcurl4-openssl-dev libjpeg-dev libssl-dev


WORKDIR /tmp
RUN set -ex && \
    git clone $dl_fldigi_git_url && \
    cd dl-fldigi && \
    git submodule init && \
    git submodule update && \
    autoreconf -vfi && \
    ./configure && \
    make && \
    make install && \
    cd /tmp && \
    rm -rf dl-fldigi

RUN set -ex && \
    apt-get purge -y --auto-remove git

ENTRYPOINT ["/usr/local/bin/dl-fldigi"]
