
nginx whitelist configuration:
  file.managed:
    - name: /tmp/nginx-allow.txt
    - source: salt://files/nginx-whitelist.jinja
    - whitelist: {{ pillar[grains['env']] }}
    - template: jinja
