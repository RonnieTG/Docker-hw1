FROM alpine:3.9

LABEL maintainer="ronnie.gilad@gmail.com"

# Specify locations
COPY . /src
WORKDIR /src

# Update package repo and install python3
RUN apk add --update python3

# Install
RUN pip3 install \
    Click==7.0 \
    Flask==1.0.2 \
    itsdangerous==1.1.0 \
    Jinja2==2.10 \
    MarkupSafe==1.1.1 \
    Werkzeug==0.14.1

# Adding our app
ENTRYPOINT ["python3","./app.py"]

# Port exposing for browser
EXPOSE 5000