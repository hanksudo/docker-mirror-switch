#!/bin/sh

# export DOCKER_REGISTRY_MIRROR=http://xxx.mirror.com

usage ()
{
  echo 'Usage :'
  echo "\t$0 on"
  echo "\t$0 off"
  exit
}

if [ "$#" -ne 1 ]
then
  usage
  exit
fi

STATE=$1

if [ "$STATE" = "on" ]
then
    echo "Turning on docker hub mirror..."
    boot2docker ssh -t 'sudo echo "EXTRA_ARGS='--registry-mirror=$DOCKER_REGISTRY_MIRROR'" | sudo tee -a /var/lib/boot2docker/profile'
else
    echo "Turning off docker hub mirror..."
    boot2docker ssh -t 'sudo rm /var/lib/boot2docker/profile'
fi

boot2docker restart
