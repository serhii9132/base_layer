### git

Installs and configures Git.
System-wide config: /etc/gitconfig

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
    <td>git_user_name</td>
    <td>The author name to be recorded in git commits</td>
    <td>str</td>
    <td>''</td>
  </tr>
    <tr>
    <td>git_user_email</td>
    <td>The author email address to be recorded in git commits</td>
    <td>str</td>
    <td>''</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Configure git
  hosts: all
  roles:
    - serhii9132.base_layer.git
```