# Intentionally using an old, vulnerable Node image for demonstration purposes
FROM node:14

WORKDIR /app

# Copy package.json
COPY package.json .

# Install dependencies
RUN npm install

EXPOSE 8080
CMD ["node", "app.js"]