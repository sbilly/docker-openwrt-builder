FROM sbilly/openwrt-builder:latest
LABEL Author="sbilly <superli_1980@hotmail.com>"
LABEL Maintainer="sbilly <superli_1980@hotmail.com>"

USER user
WORKDIR /home/user

# Prepaire Environment
COPY ./build-openwrt.sh /home/user/build-openwrt.sh

# Run
RUN /home/user/build-openwrt.sh