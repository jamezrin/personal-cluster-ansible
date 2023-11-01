# personal-cluster ansible

## Upgrade system and k3s, reboot will only be done if necessary

```bash
ansible-playbook playbook.yml -i inventory.yml
```

## Upgrade system and k3s, reboot will always be done

```bash
ansible-playbook playbook.yml -i inventory.yml -e reboot_desired=true
```
