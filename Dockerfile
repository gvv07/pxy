FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y tinyproxy
#RUN apt-get install -y git
#RUN git clone git@git.ramnet.ru:/galikeev/pxy
#COPY /pxy/tinyproxy.conf /app/
#ADD https://git.ramnet.ru/galikeev/pxy/raw/master/tinyproxy.conf /app
RUN echo 'User tinyproxy' >/etc/tinyproxy/tinyproxy.conf
RUN echo 'Group tinyproxy' >>/etc/tinyproxy/tinyproxy.conf
RUN echo 'Port 8888' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'Listen 0.0.0.0' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'Bind 0.0.0.0' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'Timeout 600 ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'DefaultErrorFile "/usr/share/tinyproxy/default.html" ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'StatHost "tinyproxy.stats" ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'StatFile "/usr/share/tinyproxy/stats.html" ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'LogLevel Warning ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'MaxClients 100 ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'MinSpareServers 5 ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'MaxSpareServers 200 ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'StartServers 10 ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'MaxRequestsPerChild 0 ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'Allow 10.90.0.0/16 ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'Allow 109.252.47.182' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'ViaProxyName "tinyproxy" ' >> /etc/tinyproxy/tinyproxy.conf
RUN echo 'DisableViaHeader Yes ' >> /etc/tinyproxy/tinyproxy.conf
CMD ["tinyproxy", "-d"]
#CMD ["/bin/sh"]
EXPOSE 8888
