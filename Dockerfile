# Container image that runs your code
FROM python:3.10-slim

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY * /home/

RUN python -m pip install --upgrade pip
RUN pip install flake8 pytest cython numpy jupyter nbconvert
RUN if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
