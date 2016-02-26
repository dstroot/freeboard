#run Grunt
grunt

# Build Docker image
docker build -t dstroot/freeboard .

# Push the docker image to Docker Hub
docker push dstroot/freeboard
