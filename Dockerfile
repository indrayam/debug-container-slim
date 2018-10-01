#Download base image alpine
FROM alpine:3.8

# Update Software repository
RUN apk update && apk upgrade && apk add --no-cache git openssh-client curl less openssl tree less bash bash-completion ca-certificates jq coreutils binutils findutils grep vim

# Set the WORKDIR to /root
WORkDIR /root

# Download and Install k8s specific tools
COPY slim/fzf .fzf
COPY slim/.bash_profile .
COPY slim/.bashrc .
COPY slim/.om .
COPY slim/complete-setup.sh .

RUN set -x && \
    chmod +x ~/complete-setup.sh

