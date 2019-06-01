FROM golang:1.7
RUN mkdir -p /app
WORKDIR /app
COPY wikiapp /app/
ENTRYPOINT ["./wikiapp"]