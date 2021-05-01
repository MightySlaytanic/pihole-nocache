FROM pihole/pihole:latest
RUN sed -i -e "s:CACHE_SIZE=[0-9]\+:CACHE_SIZE=0:g" /root/ph_install.sh
