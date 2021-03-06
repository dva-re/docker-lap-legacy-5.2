FROM kuborgh/php-5.2
RUN apt-get update && apt-get install libapache2-mod-rpaf -y && \
sed -i 's|^short_open_tag.*|short_open_tag = On|' /etc/php/apache2-php5.2/php.ini && \
sed -i 's|^short_open_tag.*|short_open_tag = On|' /etc/php/cli-php5.2/php.ini && \
apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
rm -rf /var/cache/debconf/*-old && rm -rf /var/lib/apt/lists/* && rm -rf /usr/share/doc/* && \
rm /etc/apache2/mods-enabled/rpaf.conf && \
locale-gen ru_RU.UTF-8 && locale-gen ru_RU.CP1251
ADD rpaf.conf /etc/apache2/mods-enabled/rpaf.conf
ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_ALL ru_RU.UTF-8
