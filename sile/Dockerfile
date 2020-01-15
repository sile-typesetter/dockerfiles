FROM archlinux AS archlinux-sile
ARG sile_commit=v0.10.0

RUN pacman --needed --noconfirm -Syyu
RUN pacman --needed --noconfirm --asdeps -S git base-devel

LABEL maintainer 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.maintainer 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.author 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.version "$sile_commit"

ADD _utils/setup_yay.sh /usr/local/bin/setup_yay.sh
RUN setup_yay.sh

ADD _utils/setup_sile.sh /usr/local/bin/setup_sile.sh
RUN setup_sile.sh

RUN yay --noconfirm -Yc && pacman --noconfirm -Rns yay

COPY sile/docker-entrypoint.sh /usr/local/bin

WORKDIR /data
ENTRYPOINT ["docker-entrypoint.sh"]
