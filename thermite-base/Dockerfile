FROM alastair87/ubuntu
ARG USER="user"
USER root
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y bison flex picocom && \
    apt-get clean && \
    usermod -aG dialout ${USER}
USER ${USER}
CMD [ "/bin/zsh" ]


