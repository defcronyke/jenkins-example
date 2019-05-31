# ----- build stage -----
FROM golang:alpine AS build

# Copy source code.
COPY main.go /go/src/

# Update alpine, install ca-certificates for https support,
# add a regular user account, and build project.
RUN apk update && apk upgrade && apk --no-cache add git ca-certificates && update-ca-certificates && \
    adduser --disabled-password --gecos "" appuser && \
    cd src && CGO_ENABLED=0 go build -ldflags "-s -w" -o /go/main
# ----------



# ----- production stage -----
FROM alpine

# Set working directory to filesystem root.
WORKDIR /

# Use the ca-certs from the other container,
# which we need if we want to be able to put
# an https proxy in front of the service.
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

# Copy the app's binary into the production container.
COPY --from=build /go/main ./

# Enable the user account we created in the other
# stage, and become a regular user.
COPY --from=build /etc/passwd /etc/
USER appuser

# Run the app's binary.
CMD ["./main"]
# ----------
