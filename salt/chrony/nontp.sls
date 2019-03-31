srv_ntp:
  service.dead:
    - name: chronyd
    - enable: False

cfg_ntp:
  file.managed:
    - name: /etc/chrony.conf
    - source: salt://chrony/chrony.conf.original
    - user: root
    - group: chrony
    - mode: 640
