from ruby:2.5

RUN gem install rails -v 4.2.11.1

COPY . /home/ffo/

WORKDIR /home/ffo/

RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]