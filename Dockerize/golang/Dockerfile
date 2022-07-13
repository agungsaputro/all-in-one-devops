FROM golang:1.19-alpine as build-stage

RUN apk update && apk upgrade && apk add --no-cache git dpkg gcc git musl-dev

WORKDIR /app

COPY . .
RUN go mod download
RUN go build -o task-script .

FROM golang:1.19-alpine as main
WORKDIR /app
COPY --from=build-stage /app/task-script /app
# COPY --from=build-stage /app/.env /app
ENTRYPOINT ["./task-script"]
