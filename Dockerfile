FROM node:18-alpine
WORKDIR /app/reused-modules-cms
# Install dependencies based on the preferred package manager
COPY reused-modules-cms/package.json reused-modules-cms/pnpm-lock.yaml ./
RUN yarn global add pnpm && pnpm i

EXPOSE 6000
ENV PORT 6000
