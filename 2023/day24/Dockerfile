FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
#runs the npm test
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"]
