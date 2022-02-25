FROM node:alpine

WORKDIR /usr/src/app

#DEV
CMD ["node", "index.js"]

##TEST
#CMD ["node", "index.js"]

##PROD
#CMD ["node", "index.js"]
