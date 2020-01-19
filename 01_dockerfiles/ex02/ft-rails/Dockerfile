FROM ruby:2.7.0

ONBUILD RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt update -y && apt upgrade -y && \
	apt install -y yarn && \
	yarn install --check-files && yarn upgrade && \
	yarn add jquery@3.4.1 bootstrap@3.4.1 && \
	gem install rails && \
	gem install bundler:2.1.4

#git clone https://github.com/mhartl/sample_app_6th_ed.git app
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000

ONBUILD RUN bundle update --bundler && \
	bundle install --without production && \
	yarn install --check-files
ONBUILD RUN bundle exec rake db:migrate
ONBUILD RUN bundle exec rake db:seed
