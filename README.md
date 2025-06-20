# Toll Calculator (Philippines)

## First, build the Docker images:

```sh
make build
```

## Create and setup the database:
```sh
docker compose run web rails db:create
docker compose run web rails db:migrate
docker compose run web rails db:seed
```

## Start the application:

```sh
make up
```

## Stop the application:

```sh
make down
```

## To run the toll rate parser manually:
```sh
docker-compose run web bundle exec rake toll_rates:update
```
