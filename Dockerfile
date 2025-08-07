# Use an official Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the app port
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]
