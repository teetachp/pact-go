FROM golang:1.18

# Install pact ruby standalone binaries
RUN curl -LO https://github.com/teetachp/pact-ruby-standalone/releases/download/v1.88.78/pact-1.88.78-linux-x86_64.tar.gz; \
    tar -C /usr/local -xzf pact-1.88.78-linux-x86_64.tar.gz; \
    rm pact-1.88.78-linux-x86_64.tar.gz

ENV PATH /usr/local/pact/bin:$PATH

COPY . /go/src/github.com/teetachp/pact-go

WORKDIR /go/src/github.com/teetachp/pact-go
