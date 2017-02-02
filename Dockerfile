FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.8.2

RUN gem install cluster --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cluster"]
CMD ["--help"]
