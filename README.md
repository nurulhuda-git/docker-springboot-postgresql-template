# docker-springboot-postgresql-template
docker-springboot-postgresql-template is a project template as its name, its contains docker-compose/dockerfile, spring boot project and postgresql database.
## Installation

Before we start, You need to make sure that you've installed Java Development Kit in your system.

Make sure you can execute `make` in your terminal. If you can't, you can follow this guide to install some dependency first.

Example successful command result :
```bash
$ make: *** No targets specified and no makefile found.  Stop.
```

WINDOWS (if you got any problems, please check [here](https://stackoverflow.com/questions/2532234/how-to-run-a-makefile-in-windows))
1. Download the [cygwin](http://www.cygwin.com/).
2. Setup it.
3. Done.

Before we start, you need to make sure that you have docker / docker dekstop running in your system. If not, download and install docker first.

[Docker Dekstop for Windows](https://docs.docker.com/docker-for-windows/install/)

[Docker Engine for Linux (Ubuntu)](https://docs.docker.com/engine/install/ubuntu/)

[Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)

After installation make sure you can execute `docker -v` command

Example successful command result :
```bash
$ make
  make: *** No targets specified and no makefile found.  Stop.
```

```bash
$ docker -v
  Docker version 20.10.2, build 2291f61
```

## Run Service
1. git clone this repo.
2. go to the root PATH of this project folder and execute this command to build jar file.
   ```bash
   $ make package
   ```
3. After `BUILD SUCCESS` execute command below to build docker images using `docker-compose`.
   ```bash
   $ make build
   ```
4. After `Successfully build docker images`, execute command below to run the service.
   ```bash
   $ make run
   ```

5. To stop the service
   ```bash
   $ make stop
   ```
6. To stop and clean everything
   ```bash
   $ make stop-release
   ```
