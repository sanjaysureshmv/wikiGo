FROM golang:1.7
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN go get github.com/SimonWaldherr/micromarkdownGo
RUN	go get github.com/mxk/go-sqlite/sqlite3
RUN	go build -o wikiapp
ENTRYPOINT ["./wikiapp"]