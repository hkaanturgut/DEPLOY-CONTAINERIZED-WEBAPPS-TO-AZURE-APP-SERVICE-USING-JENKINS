# Use node image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json file to the container
COPY package*.json ./

# Install npm packages
RUN npm install

# Copy the rest of the build files to the container
COPY . .

# Build the app
RUN npm run build

# Expose port 8080 to the host
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
