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
    <td>extra_pkgs</td>
    <td>A list of additional packages</td>
    <td>list</td>
    <td>[]</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
yaml
- name: Install packages
  hosts: all
  gather_facts: yes
  roles:
    - serhii9132.base_layer.packages
```