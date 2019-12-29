FROM alpine:3

RUN apk update && \
	apk add git openssh bash

COPY git-multi-ssh.sh /git-multi-ssh.sh
ENV GIT_SSH=/git-multi-ssh.sh

ENTRYPOINT ["sh", "-c"]
