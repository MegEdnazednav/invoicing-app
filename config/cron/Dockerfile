FROM alpine:3.6

# copy crontabs for root user
#COPY config/cronjobs /etc/crontabs/root

RUN apk update && apk add -v sqlite

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]