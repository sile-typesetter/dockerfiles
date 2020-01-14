FROM archlinux AS archlinux-sile
ARG sile_commit=v0.10.0

RUN pacman --needed --noconfirm -Syyu

LABEL maintainer 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.maintainer 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.author 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.version "$sile_commit"

COPY sile/docker-entrypoint.sh /usr/local/bin

WORKDIR /data
ENTRYPOINT ["docker-entrypoint.sh"]
