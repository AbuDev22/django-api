#!/bin/sh

# Wait for the database to be ready
while ! nc -z $DB_HOST $DB_PORT; do
  echo "Waiting for database to be ready..."
  sleep 2
done

echo "Database is ready!"

# Run migrations

python manage.py migrate

# Start the main application
exec "$@"