FROM node

# RUN curl -L https://github.com/google/web-starter-kit/archive/v0.5.2.tar.gz \
WORKDIR /usr/src/app_initial
RUN curl -L https://github.com/google/web-starter-kit/archive/master.tar.gz \
  | tar -xz --strip-components 1

RUN npm install && npm install -g gulp

# config
COPY wsk_run /usr/local/bin/

# FIXME! get better idea
COPY wsk_export_devel /usr/local/bin/

WORKDIR /usr/src/app
CMD ["wsk_run"]
#cmd ["node_modules/gulp/bin/gulp.js", "serve"]
#cmd ["gulp", "serve"]
EXPOSE 3000
