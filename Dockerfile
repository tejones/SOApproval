FROM nginx:stable
COPY webapp/ /usr/share/nginx/html/webapp/
RUN ls -la /usr/share/nginx/html/webapp*
