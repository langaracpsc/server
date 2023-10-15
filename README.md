# server

From-scratch implementation of the Langara Computer Science Club Server.

The LCSC Server runs several services, including:
- [our website](https://github.com/langaracpsc/langaracpsc-next)
- [peregrine](https://github.com/langaracpsc/peregrine)
- [langara course api](https://github.com/Highfire1/langara-course-api)

We use docker to to run all applications on our server. 
Applications are then reverse proxied through nginx to (langaracs.tech)[langaracs.tech]!

Containers are kept up to date with [Watchtower](https://containrrr.dev/watchtower/) and maintained with [Portainer](https://168.138.79.49:9443).


<br>
<br>


To run on your local cloud machine: 
- Install Docker
- Clone this repository with `git clone https://github.com/langaracpsc/server`
- Enter the new directory with `cd server`
- Populate `.env` (i recommend `nano .env` but feel free to use a text editor of your choice)
- Run with `./run.sh`
- Stop with `./stop.sh`

- To update from the github repository, use `git pull` then restart docker compose


Additional tools:
- `db_backup.sh` creates a backup of the postgres server
- `db_restore.sh` is unimplemented
- `hard_reset.sh` deletes all images, volumes, and networks