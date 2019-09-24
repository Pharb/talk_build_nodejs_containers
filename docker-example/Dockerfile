# CAUTION: To keep up with security updates, you need a way to update the base image.
# "node:lts" could be cached by your host when building the image and refer to an outdated and insecure image.
# If you have multiple apps, you might want to maintain your own Node.js base image with a separate update process.
FROM node:lts

WORKDIR /opt/nodejs-example

RUN mkdir -p . && \
    chown node:node .

# Use non-root user to install and start server
USER node

COPY package.json .
COPY package-lock.json .

RUN npm run git-clone && \
    npm ci

CMD ["node", "express/examples/markdown"]

EXPOSE 3000
