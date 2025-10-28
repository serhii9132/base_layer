### net_security

IPtables configuration:
```
- DROP policy for the FORWARD and INPUT chains
- allowed SSH and ICMP echo requests from {{ allowed_ip }}
- added a LOGGING chain to log malformed packets
```

Fail2Ban configuration:
```
- added jail for ssh
```

Role Variables
--------------

| Name        | Comment                       | Default value |
|-------------|-------------------------------|---------------|
| allowed_ip  | Allowed IP for connection     | ``            |
| ssh_port    | Port sshd                     | `2222`         |

Example Playbook
----------------
```yaml
- name: Configure firewall
  hosts: all
  roles:
    - role: serhii9132.base_layer.net_security
```