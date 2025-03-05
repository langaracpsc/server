# LCSC Server Infrastructure

This repository contains the infrastructure and deployment configuration for the Langara Computer Science Club's (LCSC) services. Our infrastructure uses Docker to efficiently run multiple services on a single server, making it cost-effective and maintainable.

## Current Services

| Service | Description | Port | Domain | Status |
|---------|-------------|------|---------|---------|
| Website | LCSC's official website | 3200 | [langaracs.ca](https://langaracs.ca) | Active |
| LHacks 2024 | Hackathon website | 5500 | [lhacks.langaracs.ca](https://lhacks.langaracs.ca) | Active |
| Notion Web API | Backend and FastAPI services for Notion integration | 3500 | [notion.langaracs.ca](https://notion.langaracs.ca) | Active |
| Langara Course Watcher | API and backend for course monitoring | 5010, 8000 | [api2.langaracs.ca](https://api2.langaracs.ca) | Active |
| Course Planner | Course planning tool | 5002 | [planner.langaracs.ca](https://planner.langaracs.ca) | Active |
| LCSC Links | Links management service | 5020 | [links.langaracs.ca](https://links.langaracs.ca) | Active |
| Coursys | Course management system | 5030 | [coursys.langaracs.ca](https://coursys.langaracs.ca) | Active |
| Homarr | Dashboard for service management | 7575 | [dashboard.langaracs.ca](https://dashboard.langaracs.ca) | Active |
| Nginx Proxy Manager | Reverse proxy and SSL management | 80, 81, 443 | [nginx.langaracs.ca](https://nginx.langaracs.ca) | Active |
| Portainer | Docker container management | 9443 | [portainer.langaracs.ca](https://portainer.langaracs.ca) | Active |
| Watchtower | Automatic container updates | 8080 | [watchtower.langaracs.ca](https://watchtower.langaracs.ca) | Active |

## Infrastructure Overview

### Server Specifications
- Location: Oracle Cloud (Montreal)
- CPU: 2 OCPU (Ampere A1)
- Memory: 16 GB
- Network: 2 Gb/s
- Storage: 47 GB

### Key Technologies
- **Docker**: Containerization for service isolation and management
- **Nginx Proxy Manager**: Reverse proxy and SSL certificate management
- **Watchtower**: Automated container updates
- **Portainer**: Docker container management interface
- **Homarr**: Service dashboard

## Getting Started

### Prerequisites
- Docker installed
- Git
- Server access credentials

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/langaracpsc/server
   cd server
   ```
2. Configure environment variables:
   - Copy `.env.example` to `.env`
   - Fill in required environment variables
3. Start services:
   ```bash
   ./run.sh
   ```
4. Stop services:
   ```bash
   ./stop.sh
   ```

### Maintenance Scripts
- `db_backup.sh`: Creates database backups
- `hard_reset.sh`: Resets all Docker resources (use with caution)

## Development Guidelines

### Best Practices
1. All services should be containerized
2. Use environment variables for configuration
3. Implement proper logging
4. Follow security best practices
5. Keep dependencies updated

### Access
- SSH keys are distributed to technical leads during orientation
- Use VSCode's Remote Development feature for efficient development

## Support

For technical support or questions, contact:
- Technical Leads
- Server Administrators

## License

This project is proprietary and maintained by the Langara Computer Science Club.