# Use node alpine as base image for small image size
FROM node:12-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port
EXPOSE 3000

# Launch container with this command
CMD [ "node", "app.js" ]
