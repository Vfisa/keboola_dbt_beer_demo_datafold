FROM mcr.microsoft.com/devcontainers/universal:2

RUN pip install dbt-snowflake

RUN sudo wget -P /etc/apt/trusted.gpg.d https://cli-dist.keboola.com/deb/keboola.gpg
RUN echo "deb https://cli-dist.keboola.com/deb /" | sudo tee /etc/apt/sources.list.d/keboola.list
RUN sudo apt-get update
RUN sudo apt-get install keboola-cli

