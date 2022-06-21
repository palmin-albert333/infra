#  Установка zabbix-server+nginx+postgresql
### 1) files/zabbix_server.conf вписать пароль от базы данных
### 2) files/zabbix.conf.php вписать пароль от базы данных
### 3) vars/main.yml вписать пароль от базы данных
### 4) выполнить команду ansible-galaxy collection install community.postgresql на локальном компьютере
### 5) доступ по адресу http://<server_ip>:8080/
