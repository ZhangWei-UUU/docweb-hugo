FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN hugo
COPY public /usr/share/nginx/html
COPY conf /etc/nginx