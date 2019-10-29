#!/bin/bash

pwd=`pwd`
namespace="zougangmu/"
function buildDocker()
{
  IMAGE_DIR=$1
  IMAGE_NAME=$2
  CMD="cd $pwd'/'$IMAGE_DIR && docker build . -t $IMAGE_NAME && docker push $IMAGE_NAME && cd .."
  echo $CMD"\n"
  eval $CMD
}
buildDocker "centos7" "${namespace}centos:7"
# buildDocker "ubuntu1804" "${namespace}ubuntu:18.04"
# buildDocker "debian9" "${namespace}debian:9"
buildDocker "php73" "${namespace}php:7.3"




