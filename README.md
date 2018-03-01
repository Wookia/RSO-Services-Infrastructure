# RSO project - infrastructure configuration

Docker images config, env variables and nginx config.

## Getting Started

Following instructions bellow you will be able to create running version of project

### Installing

To run this project you will have to have docker installed. To do so either: 

#### Windows

Visit [this](https://docs.docker.com/docker-for-windows/install/) page and download/install newest stable version

#### Linux

Visit [this](https://docs.docker.com/install/) page and follow steps depending on your system

Then

Visit [this](https://docs.docker.com/compose/install/) page and follow steps depending on your system


#### Mac

Visit [this](https://docs.docker.com/docker-for-mac/install/) page and download/install newest stable version

### Running

To run program you may need to run below command if docker not running yet

```
docker-machine start default
```

Then, depending if you want to run master build

```
./start.sh
```

or dev build (ports for db enabled from outside to anable working on services)

```
./start_local.sh
```

after work it is the best to stop all containers by calling this command

```
./stop.sh
```

### Using

Fronted will be visible under:

```
localhost:8080
```

Services unde:

```
localhost:8000
```

Authentication database under:

```
localhost:4321
```

Secondary database under:

```
localhost:5432
```

Adminer under:

```
localhost:6060
```

To connect to auth database use: 

```
Server: auth-db:5432
Username: postgres
Password: password
```

To connect to secondary database use: 

```
Server: secondary-db:5432
Username: postgres
Password: password
```