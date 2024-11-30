FROM ubuntu
RUN apt update && apt upgrade -y && apt install hugo -y && mkdir src
WORKDIR src
COPY . .

EXPOSE 1313
CMD ["hugo", "server", "--bind=0.0.0.0"  ]
