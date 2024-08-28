
# start main docker compose
docker compose stop

# start plausible
cd plausible/
docker compose stop
cd ..

# start findblahaj
cd secret/
docker compose stop
cd ..

#start hackathon portal
cd lhacks-portal

cd backend
docker compose stop
cd ..

cd frontend
docker compose stop
cd ..