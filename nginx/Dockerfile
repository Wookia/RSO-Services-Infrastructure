FROM nginx:1.13.8
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY preprocess.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/preprocess.sh

EXPOSE 80
EXPOSE 443

CMD /bin/bash -c "preprocess.sh && nginx -g 'daemon off;'"