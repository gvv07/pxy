FROM vimagick/tinyproxy
ADD git@git.ramnet.ru:/vadim/pxy/tiniproxy.conf /etc/tinyproxy
CMD ["tiniproxy", "-d"]
EXPOSE 8889