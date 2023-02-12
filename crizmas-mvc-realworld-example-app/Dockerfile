# Use node base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy the package.json file to the image
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 5556

# Run the application
CMD [ "npm", "start" ]
