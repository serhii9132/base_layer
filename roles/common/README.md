### common
Performs common tasks for configuration:
```
- timezone to Europe/Kyiv
- hostname to the configured value
- deploys the `zero_space` script for VirtualBox VMs 
- adds shell aliases to /etc/profile.d
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
  gather_facts: yes
  roles:
    - role: serhii9132.base_layer.common
```