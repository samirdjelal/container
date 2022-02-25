# Requires adding this to Cargo.toml to avoid errors related to fetching crates
# [net]
# retry = 5                   # network retries
# git-fetch-with-cli = true   # use the `git` executable for git operations
# offline = false              # do not access the network

#FROM rust:alpine
#FROM rust:1.59.0
#FROM rust:1.59.0-slim-buster as build
FROM rustlang/rust:nightly-slim as build

WORKDIR /usr/src/app

#DEV
CMD ["cargo", "+nightly", "run"]

##TEST
#CMD ["cargo", "+nightly", "build"]
#CMD ["./target/release/app"]

##PROD
#CMD ["cargo", "+nightly", "build", "--release"]
#CMD ["./target/release/app"]
