FROM rockylinux:9

LABEL maintainer="ranjeet.badhe@gmail.com" \
      description="Rocky Linux container with full networking tools + telnet, openssl, jq" \
      version="2.3"

# Install EPEL plus networking tools (including telnet client/server)
RUN dnf -y install \
        --allowerasing \
        --setopt=install_weak_deps=False \
        epel-release && \
    dnf -y install \
        --allowerasing \
        --setopt=install_weak_deps=False \
        iproute \
        iputils \
        net-tools \
        bind-utils \
        traceroute \
        tcpdump \
        nmap-ncat \
        curl \
        wget \
        ethtool \
        mtr \
        nmap \
        procps-ng \
        vim-minimal \
        less \
        tar \
        gzip \
        which \
        openssl \
        jq \
        telnet \
        telnet-server && \
    dnf clean all && rm -rf /var/cache/dnf

WORKDIR /root
CMD ["/bin/bash"]

