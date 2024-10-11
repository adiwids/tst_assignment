# Overview

Basic books CRUD web application based on Rails 7 and StimulusJS and Bootstrap on front-end

## Requrements

- Ruby 3.3.1

- PostgreSQL 16

- Redis 6

## Development

### Non-Docker__

`./bin/dev`

### Docker

To start

1. `docker compose up` or `docker compose up -d` to run in background

2. `docker compose run app bundle exec rails db:create db:migrate db:seed`

__Application__

`http://localhost:3000`

__Local Mailbox (Mailcatcher)__

`http://localhost:1080`

To stop

`docker compose down`
