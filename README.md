# ubuntu-compiler
Ubuntu Compiler Docker

## You can use something like

    FROM synapticmx/ubuntu-compiler:latest AS compiler

    RUN mkdir /code 
    WORKDIR /code 
    RUN git clone https://github.com/samboy/MaraDNS.git && \
        cd MaraDNS && \
        ./configure && \
        make

    FROM ubuntu:latest
    WORKDIR /opt
    COPY --from=compiler /code/MaraDNS/server/maradns .
    CMD ["/opt/maradns"]
