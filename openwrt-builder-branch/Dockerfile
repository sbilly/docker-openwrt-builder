FROM sbilly/openwrt-builder:latest
LABEL Author="sbilly <superli_1980@hotmail.com>"
LABEL Maintainer="sbilly <superli_1980@hotmail.com>"

ARG OPENWRT_BRANCH="master"

USER user
WORKDIR /home/user

# Prepaire Environment
COPY ./build-openwrt.sh /home/user/build-openwrt.sh

# Run
RUN bash /home/user/build-openwrt.sh ${OPENWRT_BRANCH}