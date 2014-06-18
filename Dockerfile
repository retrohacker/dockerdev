FROM debian:wheezy

RUN apt-get install apt-utils -y --force-yes
RUN apt-get update
RUN apt-get upgrade -y --force-yes
RUN apt-get install curl -y --force-yes
RUN apt-get install apt-transport-https -y --force-yes
RUN apt-get install lsb-release -y --force-yes
RUN curl -s https://deb.nodesource.com/setup_nodesource_repo | bash -
RUN apt-get install build-essential -y --force-yes
RUN apt-get install g++ -y --force-yes
RUN apt-get install unzip -y --force-yes
RUN apt-get install python -y --force-yes
RUN apt-get install nodejs -y --force-yes
RUN apt-get install git -y --force-yes
RUN apt-get install zsh -y --force-yes
RUN apt-get install vim -y --force-yes
RUN apt-get install openssh-server -y --force-yes
RUN apt-get install x11-xserver-utils -y --force-yes
RUN apt-get install sudo -y --force-yes
RUN apt-get install man -y --force-yes
ADD wblankenship/ /home/wblankenship
RUN useradd --home /home/wblankenship --shell /bin/zsh wblankenship
RUN echo wblankenship:password | chpasswd
RUN curl -o /home/wblankenship/.ssh/authorized_keys https://github.com/wblankenship.keys
RUN mkdir /var/run/sshd
RUN chown -R wblankenship:wblankenship /home/wblankenship

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
