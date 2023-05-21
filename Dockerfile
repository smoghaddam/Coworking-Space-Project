FROM python:3.10-slim-buster

USER root

WORKDIR /src

# Copy all app files
COPY ./analytics .

# Dependencies are installed during build time in the container itself so we don't have OS mismatch
RUN pip install -r requirements.txt

# Start the database and Flask application
CMD python app.py