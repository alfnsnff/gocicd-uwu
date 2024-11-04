FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /gocicd_uwu

RUN CGO_ENABLED=0 GOOS=linux go build -o /gocicd_uwu
ENV PORT 8080
CMD ["/belajar-cicd-pemula"]