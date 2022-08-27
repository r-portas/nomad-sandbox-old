# Secure

This folder contains a Nomad setup with security enabled.

The certificates are generated as part of the Ansible playbook and stored in the `data` folder, which is synced to the host machine.

Refer to the following Nomad docs for more information:

- [Enable TLS Encryption for Nomad](https://learn.hashicorp.com/tutorials/nomad/security-enable-tls)

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

Install the certificate in a browser

Visit `https://localhost:4646` in your browser

## Check the Nomad CLI

```bash
# Source the Nomad environment variables
source ./setup-cli.sh

nomad server members
```

## Deploy the sample job

```bash
nomad job run nginx.nomad
```

> Note: This works because Vagrant is port forwarding port 4646 of the VM to port 4646 on your host PC, which is the default port the Nomad CLI connects to.

## Destroy the VM

```bash
vagrant destroy
```
