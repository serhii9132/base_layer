### common
The role is created to run common tasks on hosts.

Role Variables
--------------

| Name        | Comment      | Default value |
|-------------|--------------|---------------|
| hostname    | Hostname     | `host`        |

Example Playbook
----------------
```yaml
- name: Common
  hosts: all
  roles:
    - role: serhii9132.base_layer.common
```