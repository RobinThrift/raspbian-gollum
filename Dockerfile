# vim:set ft=dockerfile:
FROM robinthrift/raspbian-ruby:2.1

RUN apt-get update \
    && apt-get -y install zlib1g-dev libicu-dev git
RUN gem install gollum
RUN gem install github-markdown
RUN gem install org-ruby
VOLUME /wiki
WORKDIR /wiki
CMD ["gollum", "--port", "80"]
EXPOSE 80
