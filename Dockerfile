FROM alpine:3.10

RUN apk update
RUN apk add --no-cache \
	postfix \
	postfix-pgsql \
	postfix-ldap \
	postfix-pcre \
	policyd-spf-fs \
	rsyslog

RUN apk add --no-cache \
	dovecot \
	dovecot-ldap \
	dovecot-lmtpd \
	dovecot-pgsql
    
RUN apk update postfix
RUN apk update dovecot

COPY postfix /etc/postfix
COPY dovecot /etc/dovecot

#CMD ["rc-system", "dovecot", "restart"]
#CMD ["postfix", "start"]

EXPOSE 24 25 110 143 993 995
