### users

The role configures the system by:
```
- removes the default users: debian and ubuntu (CloudInit images) and vagrant (Vagrant images)
- creates the ssh_users group
- creates a new user with sudo persmissions
- adds the public SSH key to authorized_keys (if the key is not already present)
- updates password for root
- deploys a customized .bashrc configuration to the user's home directory
```

Role Variables
--------------
<table>
<thead>
  <tr>
    <th>Name</th>
    <th>Comment</th>
    <th>Type</th>
    <th>Default Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>sudo_user</td>
    <td>Login of the user with sudo privileges</td>
    <td>str</td>
    <td>''</td>
  </tr>
  <tr>
    <td>sudo_user_pass</td>
    <td>Password of the user with sudo privileges</td>
    <td>str</td>
    <td>''</td>
  </tr>
  <tr>
    <td>ssh_pub_key</td>
    <td>Public SSH key of a user with sudo privileges</td>
    <td>str</td>
    <td>''</td>
  </tr>
  </tr>
    <tr>
    <td>root_pass</td>
    <td>Password of the root user</td>
    <td>str</td>
    <td>''</td>
  </tr>
  <tr>
    <td>ssh_port</td>
    <td>System group for SSH access</td>
    <td>str</td>
    <td>sshusers</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Configure user accounts
  gather_facts: yes
  hosts: all
  roles:
    - role: serhii9132.base_layer.users
```