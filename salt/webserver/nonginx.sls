srv_nginx:
  service.dead:
    - name: nginx
    - enable: False

remove_index:
  file.absent:
    - name: /srv/www/htdocs/index.html

original_conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://webserver/nginx.conf.original
