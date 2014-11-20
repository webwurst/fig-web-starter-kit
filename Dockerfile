FROM node

# web-starter-kit
WORKDIR /usr/src/app_initial
RUN curl -L https://github.com/google/web-starter-kit/archive/master.tar.gz \
    | tar -xz --strip-components 1 \
  && npm install \
  && npm install -g gulp

# config
COPY wsk_run /usr/local/bin/
COPY wsk_export_devel /usr/local/bin/

WORKDIR /usr/src/app
CMD ["wsk_run"]
EXPOSE 3000

#CMD ["node_modules/gulp/bin/gulp.js", "serve"]
#CMD ["gulp", "serve"]
