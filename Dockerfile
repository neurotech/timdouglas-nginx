FROM connexiolabs/alpine-nginx:1.7.11

# Set timezone
RUN echo "Australia/Sydney" > /etc/timezone
ENV TZ="Australia/Sydney"

RUN mkdir -p /usr/share/nginx/html/timdouglas.co
