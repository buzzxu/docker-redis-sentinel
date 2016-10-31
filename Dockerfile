FROM redis:3-alpine
MAINTAINER xuxiang <downloadxu@163.com>
USER root
COPY Shanghai /etc/localtime
COPY redis.conf /data/redis.conf
COPY sentinel.conf /data/sentinel.conf
COPY start.sh /data/start.sh
RUN chmod +x /data/start.sh
RUN chown -R redis:redis /data/*
ENTRYPOINT ["sh","/data/start.sh"]
USER redis
CMD ["master"]
