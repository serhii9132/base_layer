## motd

Displaying MOTD on Debian:
```
- сurrent date and time
- system load averages for the last 1, 5, and 15 minutes
- disk usage for the /, /home and /var/lib/docker partitions
- total memory usage
```

Example Playbook
----------------
```yaml
- name: Configure motd
  hosts: all
  gather_facts: true
  roles:
    - serhii9132.base_layer.motd
```