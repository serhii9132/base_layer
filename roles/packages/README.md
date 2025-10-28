### packages

Install packages.
By default, the role installs:
```
- mc
- htop
- rsync
```

Role Variables
--------------

| Name            | Comment                           | Default value |
|-----------------|-----------------------------------|---------------|
|  extra_pkgs     | A list of additional packages     | `[]`          |

Example Playbook
----------------
yaml
- name: Install packages
  hosts: all
  gather_facts: yes
  roles:
    - serhii9132.base_layer.packages
```