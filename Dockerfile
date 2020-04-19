FROM node:13-alpine

# Copy project into docker instance
COPY . /app
WORKDIR /app

# Build backend and frontend 
RUN npm install

# Expose 9091 port
EXPOSE 3000/tcp

# Set entrypoint command
CMD  npm run build && npm run start
