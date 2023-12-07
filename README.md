# server

From-scratch implementation of the Langara Computer Science Club Server.

The LCSC Server runs several services:

| Protocol | IP            | Port | Domain                    |
| -------- | ------------- | ---- | ------------------------- |
| http     | 168.138.79.49 | 81   | nginx.langaracs.tech      |
| http     | 168.138.79.49 | 3000 | langaracs.tech            |
| https    | 168.138.79.49 | 9443 | portainer.langaracs.tech  |
| http     | 168.138.79.49 | 8080 | watchtower.langaracs.tech |
| http     | 168.138.79.49 | 5000 | api2.langaracs.tech       |
| http     | 168.138.79.49 | 8000 | api.langaracs.tech        |


We use docker to to run all applications on our server. 
Applications are then reverse proxied through nginx.


Containers are kept up to date with [Watchtower](https://containrrr.dev/watchtower/) and maintained with [Portainer](https://168.138.79.49:9443).


<br>
<br>


To run on your local cloud machine: 
- Install Docker
- Clone this repository with `git clone https://github.com/langaracpsc/server`
- Enter the new directory with `cd server`
- Populate `.env`
- Run with `./run.sh`
- Stop with `./stop.sh`

- To update from the github repository, use `git pull` then restart docker compose


Additional tools:
- `db_backup.sh` creates a backup of the postgres server
- `db_restore.sh` is unimplemented
- `hard_reset.sh` deletes all images, volumes, and networks