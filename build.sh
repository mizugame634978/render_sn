set -o errexit
pip install -r requirements.txt
python manage.py collectstatic --no-input
python mangage.py migrate
python mangage.py superuser
python mangage.py chara_init
