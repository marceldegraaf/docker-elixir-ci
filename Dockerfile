FROM elixir:1.3

RUN apt-get update
RUN apt-get install --yes --quiet software-properties-common apt-transport-https ruby xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3

# Add Node.js apt key
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280
RUN apt-add-repository "deb https://deb.nodesource.com/node_4.x precise main"

# Add Yarn apt key
RUN apt-key adv --keyserver pgp.mit.edu --recv D101F7899D41F3C3
RUN apt-add-repository "deb https://dl.yarnpkg.com/debian/ stable main"

# Install Node.js and Yarn
RUN apt-get update
RUN apt-get --yes --force-yes --quiet install nodejs yarn

# Install Sass
RUN gem install sass --no-ri --no-rdoc

# Install MySQL
RUN apt-get --yes --force-yes --quiet install mysql-client

# Clean up
RUN apt-get autoclean
