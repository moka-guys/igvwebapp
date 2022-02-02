FROM node:17

# set version to be installed
ARG IGV_VERSION=1.7.0

# install IGV app bundle
WORKDIR /
RUN wget "https://igv.org/app-archive/igv-webapp.${IGV_VERSION}.zip" && \
    unzip "igv-webapp.${IGV_VERSION}.zip" && \
    mv "igv-webapp.${IGV_VERSION}" igv

# copy own igv configuration
COPY igvwebConfig.js /igv

# replace tracks and sessions with own
RUN rm -rf /igv/resources/*
COPY resources/ /igv/resources/

# set working directory
WORKDIR /igv

# install http-server
RUN npm i -g http-server

# run app with simple http-server (NGINX should do the rest)
CMD ["http-server", "-a", "0.0.0.0", "-p", "8085"]
