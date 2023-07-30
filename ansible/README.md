# Ansible Tasks

A collection of reusable Ansible tasks.

| File                | Description                        |
| ------------------- | ---------------------------------- |
| `common/nomad.yaml` | Tasks for install Nomad and Docker |

## Usage

These tasks can be imported into playbook using the `include_tasks` module

```yaml
- name: Install Nomad and Docker
  include_tasks: "../ansible/nomad.yaml"
```
