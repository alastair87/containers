FROM ubuntu:22.04
ENV DEBIAN_FRONTEND="noninteractive"
ARG USER="user"
RUN apt-get update && \
    apt-get upgrade -y && \
    yes | unminimize && \
    apt-get install -y man-db wget curl vim nano fzf bat git build-essential zsh sudo locales pigz pbzip2 pixz lz4 zip unzip && \
    apt-get clean
RUN sed -i '/en_GB.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG=en_GB.UTF-8
ENV LANGUAGE=en_GB:en
ENV LC_ALL=en_GB.UTF-8
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
