FROM rockylinux:9 

LABEL maintainer="ranjeet.badhe@gmail.com" \
      description="Rocky Linux container with full networking tools + telnet, openssl, jq" \
      version="2.2"

# Install EPEL for inetutils (telnet/telnetd) on EL9, plus networking toolset
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
        inetutils \
        inetutils-telnetd && \
    dnf clean all && rm -rf /var/cache/dnf

WORKDIR /root
CMD ["/bin/bash"]
