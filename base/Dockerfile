FROM ubuntu:22.04
ENV DEBIAN_FRONTEND="noninteractive"
ARG USER="user"
RUN apt-get update && \
    apt-get upgrade -y && \
    yes | unminimize && \
    apt-get install -y wget curl vim nano git build-essential zsh sudo && \
    apt-get clean
RUN wget https://starship.rs/install.sh -O /tmp/install.sh && \
    chmod +x /tmp/install.sh && \
    /tmp/install.sh -y && \
    rm /tmp/install.sh
RUN useradd -m ${USER} && \
    chsh -s /bin/zsh ${USER}
RUN echo 'ALL ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER ${USER}
RUN mkdir /home/${USER}/.antigen && \
    curl -L git.io/antigen > /home/${USER}/.antigen/antigen.zsh && \
    mkdir /home/${USER}/.config
COPY dot-zshrc /home/${USER}/.zshrc
COPY starship.toml /home/${USER}/.config/starship.toml
RUN zsh -c "source /home/${USER}/.zshrc"
WORKDIR /home/${USER}
CMD [ "/bin/zsh" ]
