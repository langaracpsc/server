
if [ ! -f ".env" ]; then
    echo "Please create an .env file."
    exit
fi


docker compose up -d
docker compose logs -f
# docker compose stop