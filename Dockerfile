FROM kuborgh/php-5.2
RUN apt-get update && apt-get install libapache2-mod-rpaf -y && \
sed -i 's|^short_open_tag.*|short_open_tag = On|' /etc/php/apache2-php5.2/php.ini && \
sed -i 's|^short_open_tag.*|short_open_tag = On|' /etc/php/cli-php5.2/php.ini && \
apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
rm -rf /var/cache/debconf/*-old && rm -rf /var/lib/apt/lists/* && rm -rf /usr/share/doc/* && \
rm /etc/apache2/mods-enabled/rpaf.conf
ADD rpaf.conf /etc/apache2/mods-enabled/rpaf.conf
