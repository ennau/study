sudo mv /etc/nginx/default.conf /etc/nginx/default.conf.orig
sudo ln -sf /home/box/web/etc/nginx/conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart


