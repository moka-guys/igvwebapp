FROM node:17

ARG IGV_VERSION=1.7.0

WORKDIR /

RUN wget "https://igv.org/app-archive/igv-webapp.${IGV_VERSION}.zip" && \
    unzip "igv-webapp.${IGV_VERSION}.zip" && \
    mv "igv-webapp.${IGV_VERSION}" igv

COPY igvwebConfig.js /igv

WORKDIR /igv

RUN npm i -g http-server

CMD ["http-server", "-a", "0.0.0.0", "-p", "8085"]
