# Install Docker
After installing [docker](https://hub.docker.com/editions/community/docker-ce-desktop-windows/) open command line run commands below in order

# CREATE docker postgresql database
docker pull postgres:11 <br />
docker run --name postgres-demo-dev -p 5432:5432 -e POSTGRES_PASSWORD=dbpass -d postgres:11

# CREATE db demodb
docker exec postgres-demo-dev psql -U postgres -c"CREATE DATABASE demodb" postgres<br />
docker exec postgres-demo-dev psql -U postgres -c"CREATE USER demouser with encrypted password 'demopass';" postgres<br />
docker exec postgres-demo-dev psql -U postgres -c"grant all privileges on database demodb to demouser;" postgres

You can use [flyway folder](https://github.com/mftasatan/flyway_demo/tree/main/db/flyway-7.7.0/sql) for migrations after your setup
