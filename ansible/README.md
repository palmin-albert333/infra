# infra
## Содержимое данного плэйбука для развёртывания обычной инфраструктуры без kubernetes

### файл .ansible_vault_pass.example переименовать на .ansible_vault_pass и прописать в него пароль от ansible-vault
### 1) ansible-galaxy collection install community.postgresql
### 2) /infra/ansible/roles/zabbix-server/files/zabbix_server.conf вписать пароль от базы данных
### 3) /infra/ansible/roles/zabbix-server/files/zabbix.conf.php вписать пароль от базы данных
### 4) ansible-playbook --vault-password-file=.ansible_vault_pass infra.yml
