# scrolloutf1

Deploy ScrolloutF1 on recent Debian release.  

Ansible translation of the install.sh script.

## Usage


* Playbook

```yaml
- name: bootstrap instance
  hosts: all

  tasks:
    - name: ScrollOut
      ansible.builtin.import_role:
        name: scrolloutf1
```

## Variables

See default/main.yml
