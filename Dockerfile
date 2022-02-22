# tells Docker what base image we would like to use for our application.
# Docker images can be inherited from other images. Therefore, instead of 
# creating our own base image, we’ll use the official Node.js image that 
# already has all the tools and packages that we need to run a Node.js application.

snyk-fix-3272df19cd58acb5f4fc3d1ab9f08b1d
FROM node:current-buster-slim
snyk-fix-f494d27dcd7470e124d14053b2954b32
FROM node:15.14.0-buster-slim
main

main
ENV NODE_ENV=production
WORKDIR /Hello-Cloud-World
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
# The COPY command takes all the files located in the current directory and copies them into the image.
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]