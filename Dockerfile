FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y tzdata && rm -rf /var/lib/apt/lists/*

ENV TZ=America/Sao_Paulo

USER node

EXPOSE 5678

CMD ["n8n", "start"]
