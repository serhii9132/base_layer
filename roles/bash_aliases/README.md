### bash_aliases
Configures Bash aliases for the specified list of users.

Role Variables
--------------
The role variables and their descriptions can be found [here](https://github.com/serhii9132/base_layer/tree/main/roles/bash_aliases/defaults/main.yaml).

Example Playbook
----------------
```yaml
- name: Configure bash aliases
  hosts: all
  roles:
    - serhii9132.base_layer.bash_aliases
```