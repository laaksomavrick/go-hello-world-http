# Start with a base image / os configuration
FROM golang

# Add our project somewhere into the container
ADD . /go/src/nontjobs

# Install dependecies
# Nothing to install yet
RUN go install nontjobs

# Run ./nontjobs by default when the container starts
ENTRYPOINT ["/go/bin/nontjobs"]

# Document that the service listens on 8080
EXPOSE 8080