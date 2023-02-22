FROM klakegg/hugo:ext AS  builder
ENV HUGO_ENV=production
COPY . /src
# don't change the time of files when copying
RUN hugo --noTimes=false

FROM wisvch/nginx
# Change the config file to serve index for urls
USER root
RUN sed -i -r '/404.html;/a\    error_page  404              /404.html;' /etc/nginx/conf.d/default.conf
RUN sed -i -r '/^server \{.*/a     absolute_redirect off;' /etc/nginx/conf.d/default.conf
USER 100
COPY --link --from=builder /src/public/ /srv/
