# Use the official Node.js 16.x image as the base image
FROM node:16

# Create a directory for the app
WORKDIR /app

# Copy the package.json and package-lock.json files to the app directory
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the app files to the app directory
COPY . .

# Build the app
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]
