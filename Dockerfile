# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Build the React application
RUN npm run build

# Set the environment variable to production
ENV NODE_ENV=production

# Expose port 3000
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
