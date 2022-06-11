FROM nginx:latest

LABEL maintainer="Ozan Bozkrut @ozanbozkurtt"
LABEL version="1.0"
LABEL name="resume-challange"

RUN apt update && apt install -y
WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]