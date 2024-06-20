git submodule update --init --recursive
docker build -f Dockerfile.canopend -t metrol/canopend .
docker run --rm --cap-add=NET_ADMIN metrol/canopend
