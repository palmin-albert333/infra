# infra
## Содержимое данного плэйбука для развёртывания базового кластера на kubernetes

### файл .ansible_vault_pass.example переименовать на .ansible_vault_pass и прописать в него пароль от ansible-vault
### ansible-playbook --vault-password-file=.ansible_vault_pass prepare.yml
### ansible-playbook --vault-password-file=.ansible_vault_pass join.yml
