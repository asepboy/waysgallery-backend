FROM node:14
WORKDIR /usr/src/app
COPY . .

ENV DATABASE_URL postgres://backend1:asep1@10.0.1.170:5432/waysgallery1
ENV NODE_ENV production

RUN npm install
RUN npm install serve
RUN npm install -g sequelize-cli
RUN npm build

EXPOSE 5000

CMD ["sequelize", "db:migrate"]
CMD ["node","index.js"]
