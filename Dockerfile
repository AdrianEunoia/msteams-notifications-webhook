FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

WORKDIR /app

COPY docker-scripts/ /app/

RUN chmod +x /app/success-script.sh /app/failure-script.sh

CMD ["/app/success-script.sh"]