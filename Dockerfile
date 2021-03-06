FROM golang:latest

LABEL maintaner="Rodrigo Santana <rodrigo@innovation2you.com>"

WORKDIR /go/src/fullcycle_desafio_1/

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# build file with go tool
RUN GOOS=linux go build main.go

# Run the executable
EXPOSE 8081
ENTRYPOINT ["./main"]