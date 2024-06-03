FROM node:18-alpine
WORKDIR /app
# Install dependencies based on the preferred package manager
COPY ./package.json ./pnpm-lock.yaml ./
RUN yarn global add pnpm && pnpm i

EXPOSE 6000
ENV PORT 6000
