# Pull base image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .

#RUN python manage.py makemigrations
#RUN python manage.py migrate
#RUN python manage.py createsuperuser


EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
