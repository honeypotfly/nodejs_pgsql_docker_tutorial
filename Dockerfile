# Base Image
FROM node:latest

# Where we want to send our files
WORKDIR /usr/src/app

# Copy our package files
COPY package*.json ./

# Install deps
RUN npm install

# Copy files in working dir to container
COPY . .

# Open port 9090
EXPOSE 8080

# Start node app
CMD ["npm", "run", "start"]

# docker build . -t honeypotfly/nodejs_pgsql_docker_image
# 