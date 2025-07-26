FROM i386/debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  libstdc++6 \
  libusb-0.1-4 \
  && rm -rf /var/lib/apt/lists/*

COPY nbc /usr/local/bin/nbc

RUN chmod +x /usr/local/bin/nbc && useradd -m runner

USER runner
WORKDIR /workspace

ENTRYPOINT ["nbc"]
