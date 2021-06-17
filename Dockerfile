
FROM scratch

ADD openwrt.tar.gz /

EXPOSE  80 443 7681

ENTRYPOINT ["/sbin/init"]
