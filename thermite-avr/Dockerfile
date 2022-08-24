FROM alastair87/thermite-base
ARG USER="user"
USER root
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y gcc-avr avrdude libncurses-dev && \
    rm -rf /var/cache/apt/{archives,lists}/*
USER ${USER}
CMD [ "/bin/zsh" ]