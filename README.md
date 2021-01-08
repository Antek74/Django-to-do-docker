# Django-to-do
A dead simple Django ToDo Web App

This is a sample project that a novice django developer can use to get started.

## Working

![Django to do](results/django-to-do.gif)

## Features

- Dead simple
- Easily add, delete
- Simple UI
- Blazing fast

## Run the app

- Make sure you have installed Docker daemon

- Download the files from this repo

    ```bash
	git clone https://github.com/Antek74/Django-to-do-docker
    ```

- Change the directory to the folder where you downloaded files

    ```bash
	cd Django-to-do-docker
    ```bash

- Copy sqlite db to be externally hosted as volume (so it survives container restarts)

    ```bash
	cp ~/db-zadatak1.sqlite3 .
    ```

- Build a Docker image

    ```bash
	sudo docker build -t django-to-do-docker .
    ```

- Run the image

    ```bash
	sudo docker run -d \
	-it \
	--name django-to-do-docker \
	--mount type=bind,source="$(pwd)"/db-zadatak1.sqlite3,target=/code/todo/db.sqlite3 \
	-p 8000:8000 \
	-t django-to-do-docker:latest
    ```

- After successful installation execute the following commands to check if container is running well:

    ```bash
	
    ```

- Visit `$IP:8000` in your browser where $IP is IP address of the Docker host!

Built with ♥ by [`Omkar Pathak`](http://www.omkarpathak.in/), dockerised by Ante K.
