### utilities

Installs a set of essential system administration utilities.
By default, the role installs:
```
- mc
- htop
- rsync
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
    <td>utilities_extra</td>
    <td>A list of additional packages</td>
    <td>list</td>
    <td>[]</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Set up system utilities
  hosts: all
  gather_facts: true
  roles:
    - serhii9132.base_layer.utilities
```