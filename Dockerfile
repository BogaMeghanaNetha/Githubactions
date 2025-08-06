FROM node:18-alpine
WORKDIR /app

# Copy package files with explicit permissions
COPY --chown=node:node package.json .
COPY --chown=node:node package-lock.json .

# Install production dependencies (clean cache)
RUN npm ci --only=production --force && \
    npm cache clean --force

# Copy app files with correct permissions
COPY --chown=node:node . .

# Switch to non-root user
USER node

EXPOSE 3000
CMD ["node", "index.js"]
