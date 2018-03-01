FROM nginx:1.13.8
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443

CMD /bin/bash -c "nginx -g 'daemon off;'"