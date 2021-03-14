docker pull postgres:11
docker run --name postgres-demo-dev -p 5432:5432 -e POSTGRES_PASSWORD=dbpass -d postgres:11
# CREATE db demodb
docker exec postgres-demo-dev psql -U postgres -c"CREATE DATABASE demodb" postgres
docker exec postgres-demo-dev psql -U postgres -c"CREATE USER demouser with encrypted password 'demopass';" postgres
docker exec postgres-demo-dev psql -U postgres -c"grant all privileges on database demodb to demouser;" postgres