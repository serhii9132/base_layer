### common
The role performs the configuration:
```
- timezone
- deploys the `zero_space` script for VirtualBox and VMware VMs (used to clear the free space before compression)
```

Role Variables
--------------
The role variables and their descriptions can be found [here](https://github.com/serhii9132/base_layer/blob/main/roles/common/defaults/main.yaml)

Example Playbook
----------------
```yaml
- name: Common
  hosts: all
  gather_facts: true
  roles:
    - role: serhii9132.base_layer.common
```