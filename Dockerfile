FROM openjdk:8u111-alpine
COPY entry-point.sh /entry-point.sh
RUN chmod u+x /entry-point.sh
ENTRYPOINT ["/entry-point.sh"]

