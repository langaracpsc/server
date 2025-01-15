# LCSC Server

**tl;dr : What is this repository?**

This is where all of the services for the LCSC are deployed. In short, we have many projects that we want to put on the internet, but our budget and resources are extremely constrained. Docker is a piece of software that lets us run many projects on a single server in a programatic and extensible way. This lets us host many services (e.g. our website, course planner, discord bot, analytics, and more) on a single low-cost server. 

See below for more details, and do not hesitate to ask Anderson or Rishit for more information.


# Services

***OUTDATED, see docker-compose.yml for current services***

| Docker Services                                       | Description                               | Domain                                                         | IP                        |
| ----------------------------------------------------- | ----------------------------------------- | -------------------------------------------------------------- | ------------------------- |
| [Langara API](https://github.com/langaracpsc/LangaraCourseWatcher)              | API for Langara Data.      | [api2.langaracs.ca](https://api2.langaracs.ca)             | http://168.138.79.49:5000 |
| [Langara Course Planner](https://github.com/langaracpsc/LangaraCoursePlanner)   | Langara Course Planner     | [planner.langaracs.ca](https://planner.langaracs.ca)       | http://168.138.79.49:5001 |
| [Peregrine](https://github.com/langaracpsc/peregrine)            | LCSC Discord Bot.                         | N/A
| [Website](https://github.com/langaracpsc/langaracpsc-next)       | Our official website.                     | [langaracs.ca](https://langaracs.ca)                       | http://168.138.79.49:3000 |
| [Website API](https://github.com/langaracpsc/LangaraCPSC.WebAPI) | API for the website (not for public use). | [api.langaracs.ca](https://api.langaracs.ca)               | http://168.138.79.49:8000 |
| [Nginx Proxy Manager](https://nginxproxymanager.com/)            | Reverse proxy manager.                    | [nginx.langaracs.ca](https://nginx.langaracs.ca)           | http://168.138.79.49:81   |
| [Watchtower](https://containrrr.dev/watchtower/)                 | Automatically updates docker images.      | [watchtower.langaracs.ca](https://watchtower.langaracs.ca) | http://168.138.79.49:8080 |
| [Plausible](https://plausible.io/)                               | Tracks analytics on our website.          | [plausible.langaracs.ca](https://plausible.langaracs.ca)   | http://168.138.79.49:8001 |
| [Portainer](https://www.portainer.io/)                           | Administration tools for docker.          | [portainer.langaracs.ca](https://portainer.langaracs.ca)   | https://168.138.79.49:9443 |

| Other Services      | Description                       |
| --------------------| --------------------------------- |
| [Docker](https://www.docker.com/) | Manages all of our microservices. |
| [Github Runner](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners) | Self-hosted runner for github.


# Handbook

Welcome to the Langara Computer Science Server Systems and Infrastructure Handbook.

This document covers all of our infrastructure and services.

This handbook is divided into **6 sections**:

0) Design Philosophy
1) Docker and Microservices
2) Github
3) Server
5) Domain and Nginx
6) Other



## Design Philosophy

This server exists for multiple reasons:
1) To host services such as our website and links to other resources;
2) To provide a real-world testing environment to learn from;
3) and to increase the reputation of the club.

In order to fulfill those obligations, the server needs to be secure, easily extendible, and should have as little complexity as possible.



## Docker and Microservices

In keeping with the design philosophy, we have opted to use the docker / microservices paradigm.

Each service is encapsulated in its own docker image. In short, a docker image is a sandbox for a service that keeps it from interacting with other services. This means that all services are seperated and will not depend on each other.

You can find more information on how docker works at the [official docker website](https://docs.docker.com/get-started/overview/).



## Github and CI/CD

Github is the central repository for all club projects.
All club projects should be hosted on Github.

We use [Github Actions](https://github.com/features/actions) to build a fresh docker image on every commit. These images are stored on Github Packages. We combine this with Watchtower to automatically update the docker images on the server. 

[Watchtower](https://containrrr.dev/watchtower/) will pull new packages on a 30 minute timer or if its HTTP endpoint is called. It will then pull the new image, take the old one down, and start the new image.

The configuration for Github Actions is stored in `.github/workflows` and is relatively simple. Note that while most services build for all platforms, some builds (e.g. our website) will only build for arm due to long compile times.

We also run a [self-hosted Github Actions runner](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners) on our server due to slow compile times (due to emulation) on Github-provided runners.
Unfortunately, there is no native support for running a self-hosted runner in a docker container. In the future, this service should be containerized or otherwise improved.



## Server

All services currently run on a single virtual machine on the Oracle Cloud, located in Montreal. This server is free, but is reliant on personal non-club credentials.

A future goal is to move to a server in Vancouver. For patriotic and legal reasons, we are not comfortable with a server in the united states.

Specifications:
- OCPU count: 2 (Ampere A1)
- Memory: 16 GB
- Network bandwidth (Gb/s): 2
- Boot Volume: 47 GB

Right now, we don't see a lot of load on our servers, so memory and cpu usage hover around 20%. 

SSH keys are shared to club technical leads during orientation.


## Domain and Nginx

After acquiring a domain, make sure that the proper DNS records are set up. This includes:
- A records for hosting subdomains. 
- SPF and DKIM records for email.

On the server side, we use [Nginx Proxy Manager](https://nginxproxymanager.com/) to manage nginx.
Although this is a purely GUI based setup, it saves significant time when setting up new services as writing a nginx configuration from scratch is not required.

Nginx Proxy Manager also makes setting up LetsEncrypt certificates very easy.
All services are also still available through the direct ip to the server.



## Other

Please make sure that you have a comfortable and efficient editing setup. 

I highly reccomend using vscode and its [remote development](https://code.visualstudio.com/docs/remote/ssh) feature.



## Build
Recommended server specs: 1 core, 8 GB ram, 10 GB storage

1) Ensure docker is installed
2) Clone this repository: `git clone https://github.com/langaracpsc/server`
3) Enter the cloned directory `cd server`
4) Populate `.env`
5) Run with `./run.sh`
6) If needed, stop with `./stop.sh`
  


## Additional tools:

- `db_backup.sh` creates a backup of the postgres server
- `db_restore.sh` is unimplemented
- `hard_reset.sh` deletes all images, volumes, and networks