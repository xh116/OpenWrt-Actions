
FROM scratch

ADD openwrt-x86-64-generic-rootfs.tar.gz /

EXPOSE  80 443 7681

ENTRYPOINT ["/sbin/init"]
