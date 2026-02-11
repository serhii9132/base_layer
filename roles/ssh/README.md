### ssh

Configure the SSH server using a custom configuration.
Location config: /etc/ssh/sshd_config.d/sshd.conf

sshd parameters:
---------------
```
Port {{ ssh_port }}
ListenAddress 0.0.0.0

AuthenticationMethods publickey

Protocol 2

LogLevel INFO

LoginGraceTime 30
PermitRootLogin no
MaxAuthTries 3

AllowGroups {{ ssh_group }}

PubkeyAuthentication yes

AuthorizedKeysFile	.ssh/authorized_keys

PasswordAuthentication no
PermitEmptyPasswords no

X11Forwarding no
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
    <td>ssh_port</td>
    <td>Port sshd</td>
    <td>int</td>
    <td>base_layer_ssh_port (or 2222)</td>
  </tr>
  <tr>
    <td>ssh_port</td>
    <td>System group for SSH access</td>
    <td>str</td>
    <td>base_layer_ssh_group (or sshusers)</td>
  </tr>
</tbody>
</table>

Example Playbook
----------------
```yaml
- name: Configure SSH
  hosts: all
  roles:
    - role: serhii9132.base_layer.ssh
```
