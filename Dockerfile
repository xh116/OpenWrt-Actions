
FROM scratch

ADD openwrt.tar.gz /

EXPOSE 22 80 443

ENTRYPOINT ["/sbin/init"]
