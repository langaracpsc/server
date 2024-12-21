
if [ ! -f ".env" ]; then
    echo "Please create an .env file."
    exit
fi


# start main docker compose
docker compose pull
docker compose up -d

# start plausible
cd plausible/
docker compose pull
docker compose up -d
cd ..

#start hackathon portal
# commented out for now, unsure if its causing server issues
# cd lhacks-portal

# cd backend
# docker compose pull
# docker compose up -d
# cd ..

# cd frontend
# docker compose pull
# docker compose up -d
# cd ..


# follow main logs
docker compose logs -f