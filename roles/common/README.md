### common
Performs common tasks for configuration:
```
- timezone to Europe/Kyiv
- deploys the `zero_space` script for VirtualBox VMs 
- adds shell aliases to /etc/profile.d
```

Example Playbook
----------------
```yaml
- name: Common
  hosts: all
  gather_facts: true
  roles:
    - role: serhii9132.base_layer.common
```