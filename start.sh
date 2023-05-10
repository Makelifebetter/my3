#--noinput不用人員確認，用於自動化部屬，&&運算符，左邊成功運行才換右邊，否則不執行。
python manage.py collectstatic --noinput&&
python manage.py makemigrations&&
python manage.py migrate&&
uwsgi --ini /home/www/mysite3/uwsgi.ini
