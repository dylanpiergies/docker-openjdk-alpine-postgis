ARG tag=alpine
FROM openjdk:${tag}
RUN ["addgroup", "-g", "1000", "openjdk"]
RUN ["adduser", "-G", "openjdk", "-u", "1000", "openjdk"]
RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories
RUN ["apk", "add", "postgis@edge"]
