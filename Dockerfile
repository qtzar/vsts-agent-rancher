FROM microsoft/vsts-agent:latest
MAINTAINER Declan Lynch <dlynch@qtzar.com>

ENV RANCHER_CLI_VERSION 0.4.1

RUN set -x \
  && curl -sL https://github.com/rancher/cli/releases/download/v${RANCHER_CLI_VERSION}/rancher-linux-amd64-v${RANCHER_CLI_VERSION}.tar.gz -o rancher-linux-amd64-v${RANCHER_CLI_VERSION}.tar.gz \
  && tar xvfz rancher-linux-amd64-v${RANCHER_CLI_VERSION}.tar.gz \
  && cp rancher-v${RANCHER_CLI_VERSION}/rancher /usr/bin/rancher \
  && rm -rf rancher* \
  && chmod +x /usr/bin/rancher
