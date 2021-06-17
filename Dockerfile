FROM rust:buster

RUN mkdir /src && mkdir /src/packetcrypt
WORKDIR /src/packetcrypt

COPY . /src
RUN cargo build --release

CMD /src/target/release/packetcrypt ann -p pkt1qldz2vs9tc8zy9e9spg97qv5jrlcerv8c2vwjad http://pool.srizbi.com http://pool.pktpool.io http://pool.pkt.world