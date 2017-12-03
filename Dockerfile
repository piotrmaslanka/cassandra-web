FROM library/ruby

ADD . /app
WORKDIR /app

RUN gem install cassandra-web

RUN chmod ugo+x /app/entry.sh
ENTRYPOINT /app/entry.sh

ENV PORT=9042 \
    HOSTS=127.0.01

EXPOSE 3000
