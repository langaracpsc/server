# implementation is left as an exercise to the reader
cat your_dump.sql | docker exec -i postgres psql -U your-db-user -d your-db-name
