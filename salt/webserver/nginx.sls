pkg_nginx:
  pkg.installed:
    - name: nginx

srv_nginx:
  service.running:
    - name: nginx
    - enable: True
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf

push_index:
  file.managed:
    - name: /srv/www/htdocs/index.html
    - source: salt://webserver/index.html

cfg_nginx:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://webserver/nginx.conf
