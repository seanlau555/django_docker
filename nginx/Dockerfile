FROM nginx:1.15.12-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d


# From nginx:latest

# ADD nginx.conf /etc/nginx/nginx.conf

# # RUN mkdir -p /var/www/media
# # RUN mkdir -p /var/www/static

# # WORKDIR /var/www/media
# # RUN chown -R nginx:nginx /var/www/media

# # WORKDIR /var/www/static
# # RUN chown -R nginx:nginx /var/www/static


# RUN mkdir -p /usr/src/app/mediafiles
# RUN mkdir -p /usr/src/app/staticfiles

# WORKDIR /usr/src/app/mediafiles
# RUN chown -R nginx:nginx /usr/src/app/mediafiles

# WORKDIR /usr/src/app/staticfiles
# RUN chown -R nginx:nginx /usr/src/app/staticfiles
