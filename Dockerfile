#FROM alpine --> doesnot have npm
#pushed to alexbh/simpleweb:3

#image
FROM node:14.16.1-alpine3.10

EXPOSE 80

#sets work directory
WORKDIR /usr/app

#copy files from working directory to working dorectoy inside the container
COPY ./package.json ./

#install dependencies
RUN npm install

#copy the rest
COPY ./ ./

#start command
CMD ["npm", "start"]
