FROM gliderlabs/alpine:3.2

MAINTAINER Sam Norbury <sam@zy.io>

RUN apk add --update ruby && \
    rm -rf /var/cache/apk/* && \
    gem install -N sinatra

USER nobody

VOLUME ["/data"]

EXPOSE 4567

ENTRYPOINT ["ruby"]
CMD ["/data/app.rb", "-o","0.0.0.0"]
