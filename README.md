# container-debug
Repo for building a Docker image that's used to debug other running docker containers.

To use this debug container, download the container-debug.sh script and run it with a
container name:

./container-debug.sh mycontainer

This will run a new debug container and attach it to mycontainer, starting you at the
root of mycontainer's filesystem.

Currently the debug container just contains bash, more tools will be added later.
