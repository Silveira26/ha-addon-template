ARG BUILD_FROM=ghcr.io/hassio-addons/base-python:16.0.1
FROM $BUILD_FROM

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache py3-pip

RUN python3 -m venv venv

COPY requirements.txt requirements.txt

RUN source ./venv/bin/activate && \
    pip install -r requirements.txt

# Copy scripts
COPY main.py /main.py
COPY run.sh /run.sh

# Make `run.sh` executable
RUN chmod +x /run.sh

# Run the script
CMD [ "/run.sh" ]
