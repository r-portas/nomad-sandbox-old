# Simple

This folder contains a bare bones Nomad setup,
a single VM with Nomad and Docker installed.

> Note: Nomad isn't configured with any security, the UI/CLI port is accessible to everyone

# Usage

## Start VM

```bash
vagrant up
```

## Stop VM

```bash
vagrant halt
```

## Reprovision VM

(for example, if you edit the `playbook.yaml` and you want to changes to apply)

```bash
vagrant provision
```

## Access the Web UI

Visit `http://localhost:4646` in your browser

## Check the Nomad CLI

## Deploy the sample job

```bash
nomad job run nginx.nomad
```

> Note: This works because Vagrant is port forwarding port 4646 of the VM to port 4646 on your host PC, which is the default port the Nomad CLI connects to.

## Destroy the VM

```bash
vagrant destroy
```
