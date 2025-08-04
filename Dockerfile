# Use official Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port and run
EXPOSE 3000
CMD [ "npm", "start" ]
