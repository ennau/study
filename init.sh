sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

#### Django

cd /home/box/web/
django-admin startproject ask
cd /home/box/web/ask/
python manage.py startapp qa

cat > /home/box/web/ask/qa/views.py <<EOF
from django.http import HttpResponse 
def test(request, *args, **kwargs):
    return HttpResponse('OK')
EOF

