# Info

A docker container to use on a Synology NAS.

# How to run

Run directly from the shell on the device and map the socket into the container. Run the container in privileged mode. 

```docker run -d --privileged --name jenkins -v /var/run/docker.sock:/var/run/docker.sock -v /volume1/docker/jenkins:/var/jenkins_home -p 8080:8080 jenkins/blueocean```

Once the container has been started you can manage it from the DSM interface.

**Note:** *If you make any changes to the container using the DSM interface, the socket will no longer be mapped. You will need to delete the container and re-start it from the command line with any changes you need.*