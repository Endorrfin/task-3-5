FROM quay.io/projectquay/golang:1.20

LABEL maintainer="QA Engineer"
WORKDIR /task-3-5

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o task-3-5 .

CMD ["./task-3-5"]

