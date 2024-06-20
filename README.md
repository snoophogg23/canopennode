# canopend

        git submodule update --init --recursive
        docker build -f Dockerfile.canopend -t metrol/canopend .
        docker run --rm --cap-add=NET_ADMIN --name canopend metrol/canopend

## scratch

        docker build -f Dockerfile.scratch -t metrol/canopend .
        docker compose up