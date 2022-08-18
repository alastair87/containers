FROM alastair87/pakled
ARG USER="pakled"
USER root
ADD thermite.sh /
RUN sh /thermite.sh ${USER} && \
    rm /thermite.sh
USER ${USER}
CMD [ "/bin/zsh" ]


