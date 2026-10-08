### zero_space

Script for zeroing out the free space on virtual machines running on VMware Workstation Pro

Example Playbook
----------------
```yaml
- name: Run zero_space role
  hosts: all
  gather_facts: true
  roles:
    - role: serhii9132.base_layer.zero_space
```