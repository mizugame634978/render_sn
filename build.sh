#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py makemigrations
echo "make"
python manage.py migrate
echo "migrate"
# python manage.py superuser
# python manage.py character_init
