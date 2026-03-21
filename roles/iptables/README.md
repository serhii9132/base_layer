### iptables

IPtables configuration:
```
- DROP policy for the FORWARD and INPUT chains
- allowed SSH and ICMP echo requests from {{ iptables_allowed_ips }}
- allowed loopback traffic
- added a LOGGING chain to log malformed packets
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
    <td>iptables_allowed_ips</td>
    <td>Allowed IP for connection</td>
    <td>list</td>
    <td>base_layer_allowed_ips (or [])</td>
  </tr>
  <tr>
    <td>iptables_ssh_port</td>
    <td>Port sshd</td>
    <td>int</td>
    <td>base_layer_ssh_port (or 2222)</td>
  </tr>
  <tr>
    <td>iptables_name_logging_chain</td>
    <td>Name of the user-defined chain for logging</td>
    <td>str</td>
    <td>LOGGING</td>
  </tr>
  <tr>
    <td>iptables_logging_limit</td>
    <td>Max average match rate per second/minute</td>
    <td>str</td>
    <td>4/min</td>
  </tr>
  <tr>
    <td>iptables_logging_limit_burst</td>
    <td>Specifies the maximum burst before the above limit kicks in</td>
    <td>str</td>
    <td>6</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Configure iptables
  hosts: all
  roles:
    - role: serhii9132.base_layer.iptables
```