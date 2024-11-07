# Use the official Node.js image
FROM node:14

# Create and set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
