FROM nginx:alpine

# удаляем дефолтный конфиг
RUN rm /etc/nginx/conf.d/default.conf

# копируем свой конфиг
COPY nginx.conf /etc/nginx/conf.d/default.conf

# копируем сайт
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]