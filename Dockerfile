# Use the official Node.js 18 image with Alpine Linux for a smaller footprint
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to leverage Docker caching
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on (change if different)
EXPOSE 3000

# Define the command to run your app
CMD ["node", "index.js"]
