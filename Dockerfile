FROM node:4.6.2

# ember server on port 4200
# livereload server on port 49152
EXPOSE 4200 49152
WORKDIR /myapp

# Installing Ember-Cli, Bower, and PhantomJS

RUN npm install -g ember-cli
RUN npm install -g bower
RUN npm install -g phantomjs


# Installing Watchman!

RUN \
	git clone https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	git checkout v3.5.0 &&\
	./autogen.sh &&\
	./configure &&\
	make &&\
	make install
