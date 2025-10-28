### users

The role configures the system by:
```
- removes the default debian and ubuntu users (included by default in CloudInit images)
- creates the ssh_users group
- creates a new user with sudo persmissions
- adds the public SSH key to authorized_keys (if the key is not already present)
- updates password for root
```

Role Variables
--------------

| Name                | Comment                                          | Default value |
|---------------------|--------------------------------------------------|---------------|
| sudo_user           | Login of the user with sudo privileges           | ``            |
| sudo_user_pass      | Password of the user with sudo privileges        | ``            |
| ssh_pub_key         | Public SSH key of a user with sudo privileges    | ``            |
| root_pass           | Password of the root user                        | ``            |

Example Playbook
----------------
```yaml
- name: Configure user accounts
  gather_facts: yes
  hosts: all
  roles:
    - role: serhii9132.base_layer.users
```