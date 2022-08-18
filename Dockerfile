FROM library/python:3.10-bullseye
LABEL Name=py3.10-poetry Version=0.0.1
RUN apt-get -y update
RUN apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python3 -
RUN echo 'export PATH="/root/.local/bin:$PATH"' >> /root/.bashrc
RUN echo 'export PATH="/root/.local/bin:$PATH"' >> /etc/profile