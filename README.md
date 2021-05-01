# Sources

You can find Dockerfile source on GitHub:
https://github.com/MightySlaytanic/pihole-nocache

# Docker Hub Image

https://hub.docker.com/repository/docker/giannicostanzi/pihole-nocache

# Pi-hole official image modified to remove caching

This is an image based on *pihole/pihole:latest*  that simply forces CACHE_SIZE to ZERO.
If you are wondering why I want to set it to zero, it is because I'll use unbound resolver with its own caching and DNSSEC validation, so I do not want Pi-hole caching to interfere with cache management of Unbound (if Pi-hole caches replies,  unbound cache refresh with prefetch is not triggered).

**WARNING**: the image is automatically rebuilt every night, if the official image pihole-pihole:latest image is updated. Since I'm modifying the /root/ph_install.sh initialization script it can stop working its behavior is changed.

    sed -i -e "s:CACHE_SIZE=[0-9]\+:CACHE_SIZE=0:g" /root/ph_install.sh

More info on my Medium article where I talk about my Pi-hole + Unbound home setup:
https://medium.com/nerd-for-tech/recursive-dns-resolver-with-ad-blocking-features-dea766d4f703

Here you can find info about the pihole-nocache image:
https://medium.com/nerd-for-tech/recursive-dns-ad-blocker-part-2-installing-pi-hole-without-caching-on-synology-nas-with-docker-5363bc7258f4
