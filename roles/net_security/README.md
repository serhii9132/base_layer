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
    <td>allowed_ip</td>
    <td>Allowed IP for connection</td>
    <td>str</td>
    <td>''</td>
  </tr>
  <tr>
    <td>ssh_port</td>
    <td>Port sshd</td>
    <td>int</td>
    <td>2222</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Configure firewall
  hosts: all
  roles:
    - role: serhii9132.base_layer.net_security
```