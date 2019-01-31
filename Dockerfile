FROM alpine:3.8

COPY gopath/bin/app /usr/local/bin/app

# Fix missing libc dependency
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

CMD ["app"]
