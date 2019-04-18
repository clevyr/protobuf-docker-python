FROM docker:stable-git

RUN apk add build-base curl python3 python3-dev zlib-dev jpeg-dev protobuf protobuf-dev openssl libffi-dev openssl-dev

RUN if [ ! -e /usr/bin/pip ]; then ln -s `which pip3` /usr/bin/pip ; fi
RUN if [[ ! -e /usr/bin/python ]]; then ln -sf `which python3` /usr/bin/python; fi

RUN pip3 install docker-compose
