#  Установка zabbix-server+nginx+postgresql
### 1) vars/main.yml вписать пароль от базы данных
### 2) выполнить команду ansible-galaxy collection install community.postgresql на локальном компьютере
### 3) для импорта бд на сервере выполнить zcat /usr/share/doc/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
### 4) доступ по адресу http://<server_ip>:8080/
