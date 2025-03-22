#Base image
FROM node:23.10.0-alpine3.21

#Working directory 
WORKDIR /home/app/

# coping the source code to docker image 
COPY package* .

#Nodejs installation 
RUN npm install

COPY index.js index.js

COPY Dockerfile Dockerfile

# Port mapping
EXPOSE 8000

# To expose to the multiple ports
# EXPOSE 8000 4000 30000

# to expose to the port range
# EXPOSE 8000-8009

#Run the programm.
CMD [ "npm", "start"]