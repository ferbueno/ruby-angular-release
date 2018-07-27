# Release Project

This project will contain all files to release the `Ruby-Angular` demo project.

This means it will create an image for Angular, Rails and Percona and deploy it to a development `docker` server.

The back-end project can be seen [here.](https://github.com/ferbueno/ruby-angular-back)

For this project to work, all projects must be on the same level of the directory, and with these specific names respectively:

```bash
├── release
├── back
└── ui
```

## build.sh

The build file will build the docker images to be deployed.

## up.sh

The up file deploys all images to a `docker` client. It does *NOT* run in `swarm` mode. It's designed to work as a simple deployment.

## down.sh

The down file removes the containers & networks. Keep in mind this creates a volume called `mydata` which contains all of `MySQL`'s data. Be sure to remove it afterwards.

Cheers! :v: