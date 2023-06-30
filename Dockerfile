FROM golang:alpine
WORKDIR /app
COPY /karsajobs /app/
RUN go mod download && go mod verify
RUN go build -v -o /app ./...
CMD ["app"]