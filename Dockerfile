FROM alpine:3.21

RUN apk --no-cache add tini

COPY ./codex2api /app/codex2api

EXPOSE 10000

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/app/codex2api"]
