### net_security

Fail2Ban configuration:
```
- added jail for ssh
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
    <td>fail2ban_allowed_ip</td>
    <td>Allowed IP for connection</td>
    <td>str</td>
    <td>''</td>
  </tr>
  <tr>
    <td>base_layer_ssh_port</td>
    <td>Port sshd</td>
    <td>int</td>
    <td>2222</td>
  </tr>
  <tr>
    <td>fail2ban_bantime</td>
    <td>Duration of the ban for an offending IP</td>
    <td>str</td>
    <td>24h</td>
  </tr>
  <tr>
    <td>fail2ban_maxretry</td>
    <td>Number of failed login attempts allowed before triggering a ban</td>
    <td>int</td>
    <td>3</td>
  </tr>
  <tr>
    <td>fail2ban_findtime</td>
    <td>Time window during which the failed attempts must occur</td>
    <td>str</td>
    <td>1h</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Configure fail2ban
  hosts: all
  roles:
    - role: serhii9132.base_layer.fail2ban
```