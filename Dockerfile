# pull official base image
FROM node:14.15.4-alpine

# set working directory
WORKDIR /manif-game

# install app dependencies
RUN npm install --silent
RUN npm install http-server -g

# add app
COPY . ./

# start app
CMD ["http-server"]

