FROM nginx
copy . .
EXPOSE 80
VOLUME ["/aamir-vol"]
WORKDIR  /
RUN yum update -y
RUN yum install apache2 -y
RUN mv  * /usr/share/nginx/html
RUN systemctl restart apache2
