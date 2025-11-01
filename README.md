# base_layer

Ansible collection for generic server management.

Collection variables
--------------------
<table>
<thead>
  <tr>
    <th>Name</th>
    <th>Comment</th>
    <th>Type</th>
    <th>Default Value</th>
    <th>Used by Roles</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>base_layer_ssh_port</td>
    <td>LThe default port used for the SSH daemon (sshd).</td>
    <td>int</td>
    <td>2222</td>
    <td>ssh, net_security</td>
  </tr>
  <tr>
    <td>base_layer_ssh_group</td>
    <td>The name of the system group created by the ssh role.</td>
    <td>str</td>
    <td>ssh_group</td>
    <td>ssh, users</td>
  </tr>
</tbody>
</table>

Example
-------
To maintain consistency, define these common variables once in your project's inventory data (e.g., in a dedicated file like group_vars/all/base_layer_vars.yaml):
```yaml
# group_vars/all/base_layer_vars.yaml

base_layer_ssh_port: 22222
base_layer_ssh_group: ssh_groups
```