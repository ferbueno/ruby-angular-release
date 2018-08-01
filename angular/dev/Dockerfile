# base image
FROM node:10

# Set working directory
RUN mkdir /app

WORKDIR /app

# Copy app
COPY ui/ /app

# Install Angular globally
RUN npm install -g @angular/cli

# Install NPM dependencies
RUN npm install

# Start app
CMD ng serve --host 0.0.0.0

# Expose port 4200
EXPOSE 4200