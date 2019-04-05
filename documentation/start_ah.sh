#!/bin/bash

# source /home/ubuntu/ahvenv/bin/activate

source /home/ubuntu/.env

cd /home/ubuntu/ah-code-titans

sudo pip3 install -r requirements.txt

python manage.py makemigrations

python manage.py migrate

python manage.py runserver

