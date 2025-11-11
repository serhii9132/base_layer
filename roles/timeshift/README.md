### timeshift

Install Timeshift.
Find the UUID of the root partition using Ansible gathering and writes it to timeshift.json.
The folders excluded from the backup are:
```
/swapfile
/home/**
/root/**
/dev/**
/var/tmp/**
/var/cache/**
/var/log/**
/run/**
/media/**
/mnt/**
/var/run/**
/proc/**/
/sys/**
/run/media/**
/var/lib/kubelet/**
/var/lib/cni/**
/var/lib/containerd/**
/var/lib/docker/**
```

Example Playbook
----------------
```yaml
- name: Configure Timeshift
  hosts: all
  gather_facts: yes
  roles:
    - serhii9132.base_layer.timeshift
```