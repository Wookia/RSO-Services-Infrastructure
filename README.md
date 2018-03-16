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
Windows: localhost:8080
Mac/Linux: 192.168.99.100:8080
```

Services unde:

```
Windows: localhost:8000
Mac/Linux: 192.168.99.100:8000
```

Authentication database under:

```
Windows: localhost:4321
Mac/Linux: 192.168.99.100:4321
```

Orders database under:

```
Windows: localhost:5432
Mac/Linux: 192.168.99.100:5432
```

Reservation database under:

```
Windows: localhost:6543
Mac/Linux: 192.168.99.100:6543
```

Adminer under:

```
Windows: localhost:6060
Mac/Linux: 192.168.99.100:6060
```

To connect to auth database use: 

```
Server: auth-db:5432
Username: postgres
Password: password
```

To connect to orders database use: 

```
Server: orders-db:5432
Username: postgres
Password: password
```

To connect to reservations database use: 

```
Server: reservations-db:5432
Username: postgres
Password: password
```

You can clone exiting services (auth and orders) by using: 

```
docker-compose scale auth-service=3
docker-compose scale orders-service=2
docker-compose scale reservations-service=4
```

above example will end up with 3 auth services, 2 orders services and 4 reservations service
