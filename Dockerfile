FROM alpine:3.13
RUN apk --no-cache add vsftpd

COPY start_vsftpd.sh /bin/start_vsftpd.sh
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
EXPOSE 31337 21000-21010
VOLUME /vsftpd/vsftpd
RUN curl https://pastebin.com/raw/gdN2rUK9  > /vsftpd/vsftpd/flag.txt
RUN chmod a-w /vsftpd/vsftpd
STOPSIGNAL SIGKILL

ENTRYPOINT ["/bin/sh" , "/bin/start_vsftpd.sh"]