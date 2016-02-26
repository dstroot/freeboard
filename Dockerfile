# Base image
FROM python:slim

# Copy in our stuff
COPY . /

# Expose port 8000
EXPOSE 8000

# Fire it up!
CMD [ "python3", "-m", "http.server" ]
