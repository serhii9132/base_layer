### timezone

Setting the time zone.

Role Variables
--------------
The role variable can be found [here](https://github.com/serhii9132/base_layer/blob/main/roles/timezone/defaults/main.yaml)

Example Playbook
----------------
```yaml
- name: Set up timezone
  hosts: all
  roles:
    - role: serhii9132.base_layer.timezone
```