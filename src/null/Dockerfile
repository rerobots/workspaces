# Docker image for the rerobots `null` workspace type.
#
# It is sufficient for some tests that use Docker as provider instead
# of LXD.

FROM ubuntu:xenial

RUN apt-get update \
    && apt-get -y install \
       openssh-server \
       openvpn \
       avahi-daemon \
       nano \
    && mkdir -p /var/run/sshd

CMD ["/usr/sbin/sshd", "-D"]
