# app for invoiving

See docker-compose.yml

## config

make sure you have the credentials.json file from the google-api. Mount this in data.
see also:
https://github.com/MegEdnazednav/invoicing-sync

## development setup

### Config your docker-compose.override.yml

```
version: "3.4"
services:
  invoicing-sync:
    build: /Users/meg/code/celeste/invoicing-sync
    entrypoint: ["echo", "service disabled because not needed"]
  cronjobs:
    entrypoint: ["echo", "service disabled because not needed"]
  invoicing:
    build: /Users/meg/code/celeste/invoicing
    volumes:
      - /Users/meg/code/celeste/invoicing:/usr/src/app
    entrypoint: ["tail", "-f", "/dev/null"] # if you want to debug the build this might come handy. This keeps the images running.
    environment:
      - "PORT=80"
      - "RAILS_ENV=development"
    ports:
      - 3000:80
```

### Manual starting of invoicing (not invoicing-app)

`drc exec invoicing bash`

`rails s -e production` --?? for some reason
