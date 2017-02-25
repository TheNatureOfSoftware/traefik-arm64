FROM scratch

ENV VERSION v1.1.2
COPY qemu-aarch64-static /usr/bin/qemu-aarch64-static
COPY traefik_linux-arm64 /traefik

EXPOSE 80 8080
ENTRYPOINT ["/traefik"]
