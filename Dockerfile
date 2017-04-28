FROM centos:7
RUN yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all
RUN yum install -y mod_ssl
COPY httpd.conf /etc/httpd/conf/httpd.conf
CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
