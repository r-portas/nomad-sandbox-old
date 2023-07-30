# Secure

This folder contains a Nomad setup with security (mTLS) enabled, note that it **doesn't** enable ACLs.

The certificates are generated as part of the Ansible playbook and stored in the `data` folder, which is synced to the host machine.

Refer to the following Nomad docs for more information:

- [Enable TLS Encryption for Nomad](https://learn.hashicorp.com/tutorials/nomad/security-enable-tls)

After starting the VM, the `data` directory will contain the following certificates:

| Certificate Name | Description                                                                  |
| ---------------- | ---------------------------------------------------------------------------- |
| nomad-ca.pem     | CA public certificate                                                        |
| nomad-ca-key.pem | CA private key, keep secret                                                  |
| nomad-ca.csr     | CA signing request                                                           |
| server.pem       | Nomad server node public certificate for the `global` region                 |
| server-key.pem   | Nomad server node private key for the `global` region                        |
| cli.pem          | Nomad CLI certificate                                                        |
| cli-key.pem      | Nomad CLI private key                                                        |
| cli.p12          | A browser-compatible certificate so the Nomad UI can be loaded via a browser |

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

The playbook also generates a
Install the certificate in a browser

### Chrome

1. Visit `chrome://settings/certificates`
2. Under "Your certificates", click "Import"
3. Select the `cli.p12` from the `data` folder
4. Visit `https://localhost:4646` in your browser

### Firefox

1. Go to Settings
2. Search "Certificates"
3. Click "View Certificates..."
4. Under "Your Certificates"
5. Click "Import..."
6. Select the `cli.p12` in the `data` folder
7. Visit `https://localhost:4646` in your browser

## Check the Nomad CLI

```bash
# Source the Nomad environment variables
source ./setup-cli.sh

nomad server members
```

## Deploy the sample job

```bash
nomad job init
nomad job run example.nomad
```

> Note: This works because Vagrant is port forwarding port 4646 of the VM to port 4646 on your host PC, which is the default port the Nomad CLI connects to.

## Destroy the VM

```bash
vagrant destroy
```
