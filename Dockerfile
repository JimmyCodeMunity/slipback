FROM mcr.microsoft.com/playwright:v1.49.0-jammy

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev

RUN npx playwright install chromium --with-deps

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]
