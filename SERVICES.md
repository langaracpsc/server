# LCSC Services Documentation

This document provides detailed information about each service running in our infrastructure.

## Core Services

### Website (langaracpsc-next)
- **Port**: 3200
- **Image**: `ghcr.io/langaracpsc/langaracpsc-next:latest`
- **Description**: LCSC's official website
- **Documentation**: [LangaraCPSC Next.js Website](https://github.com/langaracpsc/langaracpsc-next)

### LHacks 2024
- **Port**: 5500
- **Image**: `ghcr.io/langaracpsc/lhacks2024:latest`
- **Description**: Hackathon website
- **Documentation**: [LHacks 2024 Repository](https://github.com/langaracpsc/lhacks2024)

### Notion Integration
- **Backend Port**: Internal
- **FastAPI Port**: 3500
- **Images**: 
  - `ghcr.io/langaracpsc/notion-web-api-backend:latest`
  - `ghcr.io/langaracpsc/notion-web-api-fastapi:latest`
- **Description**: Notion API integration services
- **Documentation**: [Notion Web API Repository](https://github.com/langaracpsc/notion-web-api)

## Course Management Services

### Langara Course Watcher
- **API Port**: 5010
- **Backend Port**: 8000
- **Images**:
  - `ghcr.io/langaracpsc/langaracoursewatcher-api:latest`
  - `ghcr.io/langaracpsc/langaracoursewatcher-backend:latest`
- **Description**: Course monitoring and notification system
- **Documentation**: [Langara Course Watcher](https://github.com/langaracpsc/LangaraCourseWatcher)

### Course Planner
- **Port**: 5002
- **Image**: `ghcr.io/langaracpsc/langaracourseplanner:latest`
- **Description**: Course planning tool
- **Documentation**: [Langara Course Planner](https://github.com/langaracpsc/LangaraCoursePlanner)

### Coursys
- **Port**: 5030
- **Image**: `ghcr.io/langaracpsc/coursys:latest`
- **Description**: Course management system
- **Documentation**: [Coursys Repository](https://github.com/langaracpsc/coursys)

## Utility Services

### LCSC Links
- **Port**: 5020
- **Image**: `ghcr.io/langaracpsc/links:latest`
- **Description**: Links management service
- **Documentation**: [LCSC Links Repository](https://github.com/langaracpsc/links)

### Homarr
- **Port**: 7575
- **Image**: `ghcr.io/ajnart/homarr:latest`
- **Description**: Service dashboard
- **Documentation**: [Homarr Documentation](https://homarr.dev/docs)

## Infrastructure Services

### Nginx Proxy Manager
- **Ports**: 80, 81, 443
- **Image**: `jc21/nginx-proxy-manager:latest`
- **Description**: Reverse proxy and SSL management
- **Documentation**: [Nginx Proxy Manager Documentation](https://nginxproxymanager.com/guide/)

### Portainer
- **Port**: 9443
- **Image**: `portainer/portainer-ce:latest`
- **Description**: Docker container management interface
- **Documentation**: [Portainer Documentation](https://docs.portainer.io/)

### Watchtower
- **Port**: 8080
- **Image**: `containrrr/watchtower`
- **Description**: Automatic container updates
- **Documentation**: [Watchtower Documentation](https://containrrr.dev/watchtower/)

## Discord Integration

### Peregrine
- **Port**: Internal
- **Image**: `ghcr.io/langaracpsc/peregrine:latest`
- **Description**: LCSC Discord Bot
- **Documentation**: [Peregrine Repository](https://github.com/langaracpsc/peregrine)

## Legacy Services (Currently Disabled)

### Website API
- **Status**: Disabled (CORS issues)
- **Image**: `ghcr.io/langaracpsc/langaracpsc.webapi:latest`
- **Documentation**: [LangaraCPSC WebAPI](https://github.com/langaracpsc/LangaraCPSC.WebAPI)

### Legacy Langara API
- **Status**: Disabled (Pinned to legacy version)
- **Image**: `ghcr.io/langaracpsc/langaracoursewatcher@sha256:935111ab3b22926a4bbc99b67c440f84e96b537090862493eb4b6e0a45ece066`
- **Documentation**: [Legacy Langara Course Watcher](https://github.com/langaracpsc/LangaraCourseWatcher) 