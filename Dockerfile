
FROM scratch

ADD openwrt-x86-64-generic-rootfs.tar.gz /

USER root

EXPOSE  80 

ENTRYPOINT ["/sbin/init"]
