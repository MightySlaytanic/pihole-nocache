FROM pihole/pihole:latest
RUN sed -i -e "s:CACHE_SIZE=[0-9]\+:CACHE_SIZE=0:g" /etc/.pihole/automated\ install/basic-install.sh
