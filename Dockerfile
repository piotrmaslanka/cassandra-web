FROM library/ruby:2.2-onbuild

ENV PORT=9042 \
    HOSTS=127.0.0.1

RUN gem install cassandra-web

RUN chmod ugo+x /app/entry.sh
ENTRYPOINT /app/entry.sh

EXPOSE 3000
