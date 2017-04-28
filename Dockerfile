FROM httpd:2.2
COPY httpd.conf /etc/httpd/conf/httpd.conf
CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
