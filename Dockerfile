FROM node:lts-jessie
ENV NODE_ENV=production
ENV PATH $PATH:/var/www/app/node_modules/.bin

# Set the work directory
RUN mkdir -p /var/www/app
WORKDIR /var/www/app

# Add our package.json and install *before* adding our application files
ADD package.json ./
RUN npm i --production

# Add application files
ADD . /var/www/app

RUN npm run build

EXPOSE 4000

CMD ["next", "start"]
