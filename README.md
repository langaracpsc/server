# Services

| Services                                              | Description                               | Domain                                                         | IP                        |
| ----------------------------------------------------- | ----------------------------------------- | -------------------------------------------------------------- | ------------------------- |
| Langara API                                           | API for Langara Data.                     | [api2.langaracs.tech](https://api2.langaracs.tech)             | http://168.138.79.49:5000 |
| Langara Course Browser                                | Langara Course Planner                    | [planner.langaracs.tech](https://planner.langaracs.tech)       | Hosted by Github          |
| Peregrine                                             | LCSC Discord Bot.                         | N/A                                                            | N/A                       |
| Website                                               | Our official website.                     | [langaracs.tech](https://langaracs.tech)                       | http://168.138.79.49:3000 |
| Website API                                           | API for the website (not for public use). | [api.langaracs.tech](https://api.langaracs.tech)               | http://168.138.79.49:8000 |
| [Nginx Proxy Manager](https://nginxproxymanager.com/) | Reverse proxy manager.                    | [nginx.langaracs.tech](https://nginx.langaracs.tech)           | http://168.138.79.49:81   |
| [Watchtower](https://containrrr.dev/watchtower/)      | Automatically updates docker images       | [watchtower.langaracs.tech](https://watchtower.langaracs.tech) | http://168.138.79.49:8080 |
| [Plausible](https://plausible.io/)                    | Tracks analytics on our website           | [analytics.langaracs.tech](https://analytics.langaracs.ca)     | http://168.138.79.49:8001 |
| [Portainer](https://www.portainer.io/)                | Administration tools for docker.          | [portainer.langaracs.tech](https://portainer.langaracs.tech)   | https://168.138.79.49:9443 |



# Handbook

Welcome to the Langara Computer Science Server Systems and Infrastructure Handbook.

This document covers all of our infrastructure and services.

This handbook is divided into 7 sections:
0) Design Philosophy
1) Docker and Microservices
2) Github
3) Server
5) Domain and Nginx
6) Other

# Design Philosophy

This server exists for multiple reasons:
1) To host services such as our website and links to other resources;
2) To provide a real-world testing environment to learn from;
3) and to increase the reputation of the club.

In order to fulfill those obligations, the server needs to be secure, easily extendible, and should have as little complexity as possible.

# Docker and Microservices

In keeping with the design philosophy, we have opted to use the docker / microservices paradigm.

Each service should be encapsulated in its own docker image.

To be written:
- resources for learning about docker
# Github

Github is the central repository for all club projects.
All club projects should be hosted on Github.

As well, Github provides tools to easily build docker images on every pull.

To be written:
- Github Actions / workflow.yml
- Watchtower
- Github packages
- Self-hosted runners

# Server

To be written:
- where to get a server
- recommended specs

# Domain and Nginx

To be written:
- acquiring a domain
- setting up A records
- setting up nginx-reverse-proxy and LetsEncrypt

# Other
To be written:
- vscode setup
- authentication / server control

# Build
0) Recommended server specs: 1 core, 8 GB ram, 10 GB storage
1) Ensure docker is installed
2) Clone this repository: `git clone https://github.com/langaracpsc/server`
3) Enter the cloned directory `cd server`
4) Populate `.env`
5) Run with `./run.sh`
6) If needed, stop with `./stop.sh`
  
Insert git / github sync instructions here.
  

Additional tools:

- `db_backup.sh` creates a backup of the postgres server
- `db_restore.sh` is unimplemented
- `hard_reset.sh` deletes all images, volumes, and networks