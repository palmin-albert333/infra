# infra
## Содержимое данного плэйбука для развёртывания базовой инфраструктуры на kubernetes
## Находится в стадии разработки

ansible-playbook --vault-password-file=.ansible_vault_pass general.yml

ansible-playbook --vault-password-file=.ansible_vault_pass initial.yml

ansible-playbook --vault-password-file=.ansible_vault_pass swapoff.yml

ansible-playbook --vault-password-file=.ansible_vault_pass kube-dependencies.yml

ansible-playbook --vault-password-file=.ansible_vault_pass master.yml

ansible-playbook --vault-password-file=.ansible_vault_pass worker.yml
