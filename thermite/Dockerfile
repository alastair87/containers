FROM alastair87/base
ARG USER="user"
USER root
ADD thermite.sh /
RUN sh /thermite.sh ${USER} && \
    rm /thermite.sh
USER ${USER}
CMD [ "/bin/zsh" ]


