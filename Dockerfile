FROM theia:latest
USER root
RUN apk sudo vim alpine-sdk sudo
RUN echo "theia ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers
RUN addgroup theia abuild
RUN mkdir -p /var/cache/distfiles
RUN chmod a+w /var/cache/distfiles
USER theia
RUN abuild-keygen -a -i -n