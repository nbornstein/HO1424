pkg_ntp:
  pkg.installed:
    - name: chrony

srv_ntp:
  service.running:
    - name: chronyd
    - enable: True
    - watch:
      - pkg: chrony
      - file: /etc/chrony.conf

cfg_ntp:
  file.managed:
    - name: /etc/chrony.conf
    - source: salt://chrony/chrony.conf
    - user: root
    - group: chrony
    - mode: 640
