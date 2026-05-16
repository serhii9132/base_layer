### accounts

The role configures the system by:
```
- removes the default users: debian and ubuntu (CloudInit images) and vagrant (Vagrant images)
- creates the system group for SSH access
- creates a new users with sudo persmissions
- adds the public SSH key to authorized_keys (if the key is not already present)
- updates password for root.
- adds the public SSH key for root, in case if only this user is used to log in 
- deploys a customized .bashrc configuration to the users' home directory
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
    <td>accounts_clean_default_users</td>
    <td>Remove stock OS users (ubuntu, debian, vagrant)</td>
    <td>bool</td>
    <td>false</td>
  </tr>
  </tr>
    <tr>
    <td>accounts_root_pass</td>
    <td>Password of the root user</td>
    <td>str</td>
    <td>''</td>
  </tr>
  </tr>
    <tr>
    <td>accounts_root_ssh_pub_key</td>
    <td>Public SSH key of the root user</td>
    <td>str</td>
    <td>''</td>
  </tr>
  <tr>
    <td>accounts_ssh_group</td>
    <td>System group for SSH access</td>
    <td>str</td>
    <td>base_layer_ssh_group (or sshusers)</td>
  </tr>
    <tr>
    <td>accounts_list_sudo_users</td>
    <td>List of dictionaries containing sudo users' details (login, password, ssh_pub_key). For more details, check the defaults/main.yml file.</td>
    <td>list</td>
    <td>[]</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Configure user accounts
  gather_facts: true
  hosts: all
  roles:
    - role: serhii9132.base_layer.accounts
```