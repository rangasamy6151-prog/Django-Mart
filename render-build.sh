#!/usr/bin/env bash
pip install -r requirements.txt

if [ "$RUN_MIGRATIONS" = "true" ]
then
  python manage.py makemigrations
  python manage.py migrate
fi