FROM archlinux AS archlinux-sile
ARG sile_tag=v0.10.0

LABEL maintainer 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.maintainer 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.author 'Caleb Maclennan <caleb@alerque.com>'
LABEL org.siletypesetter.version "$sile_tag"

RUN pacman --needed --noconfirm -Syuq && yes | pacman -Sccq

ADD _utils/setup_yay.sh /usr/local/bin/setup_yay.sh
ADD _utils/teardown_yay.sh /usr/local/bin/teardown_yay.sh
ADD _utils/setup_sile.sh /usr/local/bin/setup_sile.sh
RUN setup_sile.sh $sile_commit

COPY sile/docker-entrypoint.sh /usr/local/bin

WORKDIR /data
ENTRYPOINT ["docker-entrypoint.sh"]
