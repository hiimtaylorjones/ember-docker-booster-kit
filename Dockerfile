FROM node:4.6.2

# ember server on port 4200
# livereload server on port 49152
EXPOSE 4200 49152
WORKDIR /myapp

# Installing Ember-Cli, Bower, and PhantomJS

RUN npm install -g yarn

RUN yarn global add ember-cli
RUN yarn global add bower
RUN yarn global add phantomjs-prebuilt


# Installing Watchman!

RUN \
	git clone https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	git checkout v3.5.0 &&\
	./autogen.sh &&\
	./configure &&\
	make &&\
	make install
