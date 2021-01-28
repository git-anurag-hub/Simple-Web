# Specify base image
FROM node:alpine

# Docker Dir
WORKDIR /usr/app

# Installing Dependencies

COPY ./package.json ./
RUN npm install
COPY ./ ./

# Running Command

CMD ["npm", "start"]