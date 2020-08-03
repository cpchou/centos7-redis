FROM library/centos:7
ENV LANG zh_TW.UTF-8
ENV LANGUAGE zh_TW.UTF-8
#ENV LC_ALL zh_TW.UTF-8
ENV TZ=Asia/Taipei

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum -y --enablerepo=remi,remi-test install redis

#RUN systemctl daemon-reload
#RUN systemctl enable redis.service
#RUN systemctl start redis.service

EXPOSE      6379
EXPOSE      6380
EXPOSE      6381
EXPOSE      26379
EXPOSE      26380
EXPOSE      26381

# ENTRYPOINT  ["systemctl", "start", "nginx"]
# Failed to get D-Bus connection: Operation not permitted
