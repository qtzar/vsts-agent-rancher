## Visual Studio Team Services Agent with Rancher CLI

[![](https://images.microbadger.com/badges/image/qtzar/vsts-agent-rancher.svg)](https://microbadger.com/images/qtzar/vsts-agent-rancher "Get your own image badge on microbadger.com")

This image will create a VSTS Agent with the Rancher CLI installed. The base image is microsoft/vsts-agent:ubuntu-16.04-docker-1.12.1-standard with Rancher CLI and a Rancher API python

#### VSTS Agent Setup

The following environment variables should be set in the docker container so that the VSTS Agent can start up. Further environment variables can be found [here](https://hub.docker.com/r/microsoft/vsts-agent/).

* VSTS_ACCOUNT
* VSTS_TOKEN

#### VSTS Release Environment Setup

When building a release environment you should add the following variables to the environment definition. For best results you should use an environment api access key and environment api url instead of an account api access key.

* RANCHER_URL
* RANCHER_ACCESS_KEY
* RANCHER_SECRET_KEY
* RANCHER_ENVIRONMENT
