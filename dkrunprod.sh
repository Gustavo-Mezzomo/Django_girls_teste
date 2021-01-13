#!/bin/bash

docker build -t gustavomezzomo .
docker stop gustavomezzomo
docker run -d --rm -p 8001:8000 \
        --env-file $HOME/gustavomezzomo.env \
        --name gustavomezzomo \
        -v $(pwd)/dkdata:/dkdata \
        gustavomezzomo start.sh