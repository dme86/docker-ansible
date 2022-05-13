# ---------------- base
FROM alpine:edge as builder

# ---------------- package
RUN apk update && \
apk add --no-cache ansible && \

# ---------------- cleanup
rm -rf /tmp/* && \
rm -rf /var/cache/apk*
