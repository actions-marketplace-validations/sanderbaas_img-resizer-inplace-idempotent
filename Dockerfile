FROM alpine:latest
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
# Install Imagemagick
RUN apk add --no-cache file
RUN apk --update add imagemagick
ENTRYPOINT ["/entrypoint.sh"]
