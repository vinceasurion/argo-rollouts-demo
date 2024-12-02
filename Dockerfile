# Use the official Golang image to create a build artifact.
FROM docker.artifactory.entarch.prd.aws.asurion.net/cloudengineering/pse-golang:stretch AS builder

# Set the Current Working Directory inside the container
WORKDIR /app
# Copy go mod and sum files
COPY go.mod ./
RUN go mod download
COPY . .
RUN go build -o main .
EXPOSE 8080

# Command to run the executable
CMD [ "./main" ]