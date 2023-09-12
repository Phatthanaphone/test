# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Build your React.js app
RUN npm run build

# Expose port 80 for the frontend
EXPOSE 3001

# Start your React.js app when the container starts
CMD ["npm", "start"]
