FROM ruby:3.4.8 AS builder

RUN gem install jekyll -v 3.2.1

FROM ruby:2.7.8

COPY --from=builder /usr/local/bundle /usr/local/bundle

WORKDIR /app/jekyll

EXPOSE 4000

CMD ["jekyll", "build"]