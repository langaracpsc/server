# server
Backup / Setup files for LCSC Server

We use docker to to run all applications on our server.

Containers are kept up to date with [Watchtower](https://containrrr.dev/watchtower/).

Current containers:
- [peregrine](https://github.com/langaracpsc/peregrine)


<br>
<br>


To run on your local cloud machine: 
- Install Docker
- Clone this repository
- Populate `.env`
- Run `docker compose up` (`ctrl p+q` to detach after running or add `-d` to start detached)
- When adding a new container, use `docker compose stop` then `docker compose rm` to delete the application.