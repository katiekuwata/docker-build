FROM centos
MAINTAINER Katie Kuwata <katie.kuwata@gmail.com>
# RUN: execute at build
# RUN echo "now building..."
# CMD: execite at run
# CMD echo "now running..."
# CMD ["echo", "now running..."]
RUN yum install -y httpd
ADD ./index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
