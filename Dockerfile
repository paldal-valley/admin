FROM ruby:2.4.2
MAINTAINER kch21026@naver.ac.kr

# apt-get update error fix용 코드
RUN sed -i '/jessie-updates/d' /etc/apt/sources.list

# 기본적인 Setting에 필요한 file 다운로드 (node version error fix)
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get update -qq && apt-get install -y nodejs postgresql-client

# 실제 코드 배포
RUN mkdir /prepay
WORKDIR /prepay
COPY Gemfile /prepay/Gemfile
COPY Gemfile.lock /prepay/Gemfile.lock
RUN bundle install
COPY . /prepay

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
