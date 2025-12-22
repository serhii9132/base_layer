### hostname
Set a hostname

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
    <td>hostname</td>
    <td>Hostname</td>
    <td>str</td>
    <td>'host'</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Common
  hosts: all
  roles:
    - role: serhii9132.base_layer.hostname
```