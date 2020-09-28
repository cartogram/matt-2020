FROM node:lts-jessie
ENV PATH $PATH:/var/www/app/node_modules/.bin

# Set the work directory
RUN mkdir -p /var/www/app
WORKDIR /var/www/app

# Add our package.json and install *before* adding our application files
ADD package.json ./
RUN yarn

# Add application files
ADD . /var/www/app

RUN yarn run build

EXPOSE 4000

CMD ["next", "start"]
