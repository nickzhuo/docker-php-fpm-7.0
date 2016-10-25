##
## PHP-FPM 7.0
##
FROM centos:7
MAINTAINER "nICKZHUO" <sidewindermax@hotmail.com>


##
## Labels
##
LABEL \
	name="Nickzhuo's PHP-FPM 7.0 Image" \
	image="php-fpm-7.0" \
	vendor="artsky" \
	license="MIT" \
	build-date="2016-10-24"


##
## Bootstrap Scipts
##
COPY ./scripts/docker-install.sh /
COPY ./scripts/docker-entrypoint.sh /


##
## Install
##
RUN /docker-install.sh


##
## Ports
##
EXPOSE 9000


##
## Volumes
##
VOLUME /var/log/php-fpm
VOLUME /etc/php-custom.d


##
## Entrypoint
##
ENTRYPOINT ["/docker-entrypoint.sh"]
