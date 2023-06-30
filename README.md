# server
Backup / Setup files for LCSC Server

We use docker to to run all applications on our server. 
Applications are then reverse proxied through nginx to (langaracs.tech)[langaracs.tech]!

Containers are kept up to date with [Watchtower](https://containrrr.dev/watchtower/) and maintained with [Portainer](https://168.138.79.49:9443).

Current containers:
- [peregrine](https://github.com/langaracpsc/peregrine)
- [langara api](https://github.com/Highfire1/langara-course-api)


<br>
<br>


To run on your local cloud machine: 
- Install Docker
- Clone this repository with `git clone https://github.com/langaracpsc/server`
- Enter the new directory with `cd server`
- Populate `.env` (i recommend `nano .env` but feel free to use a text editor of your choice)
- Run with `docker compose up -d`
- Follow the logs with `docker compose logs -f` 

- To update from the github repository, use `git pull` then `docker compose stop` and `docker compose rm`, then `docker compose up -d`

- Use `docker-compose down -v --rmi all --remove-orphans` to clear the docker compose cache (we need to move to podman)
