FROM debian:latest
MAINTAINER Tim Adams timskipladder@gmail.com
WORKDIR ~
EXPOSE 22
# Toolshop needs to know the following variables:
# What Tool
# What Version
# What repo to pull your Operations configurations from (once in production)
# As we add more tools, more feature will be added.


#Tools
ARG ops_repo=true
ARG ops_repo_url= 
ARG ansible_needed=true
ARG ansible_version=2.5.1
ARG python_needed=true
ARG python_version=2.5.1
ARG puppet_needed=false
ARG puppet_version=0

COPY build.sh .
CMD ./build.sh
