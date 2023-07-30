<div align="center">
  <h1 align="center">Nomad Examples</h3>

  <p align="center">
    A collection of examples for working with HashiCorp Nomad
  </p>
</div>

## About The Project

[HashiCorp Nomad](https://www.nomadproject.io/) is a simple and lightweight scheduler and orchestrator to manage containerized and non-containerized workloads, in essence it _somewhat_ comparable to [Kubernetes](https://kubernetes.io/), but with a much different approach (Kubernetes is an all-in-one solution, with a lot of things provided out of the box whereas Nomad is quite minimal, with a lot of additional functionality provided by tools like [Consul](https://www.consul.io/) and [Vault](https://www.vaultproject.io/)).

### Why I'm using with Nomad

I run my own homelab, which used to run apps as containers on top of Kubernetes.
The setup worked fairly well, but I wanted a simpler solution to running my apps.
The type of workloads I run are fairly simple, I had a single server and the networking of the containers is fairly simple.
For what I doing I didn't need the complexity of Kubernetes, so instead I took a look at Nomad as an alternative.

### My experience with Nomad vs Kubernetes

I've used Kubernetes a bit for work and I think its still a great fit for enterprise systems, however I found it had difficulty scaling _down_ to my needs, namely how it operates on a single node. Below is a list of the pro and cons I've found while exploring Nomad. Note that I'm still a novice with Nomad, so some of these might be incorrect.

| Pros                                                                                        | Cons                                           |
| ------------------------------------------------------------------------------------------- | ---------------------------------------------- |
| Easy to install, a single binary                                                            | Harder to secure, default install isn't secure |
| Nomad jobs are much shorter than similar K8s manifests, HCL is a nice language to work with | In comparison K8s has a huge ecosystem         |

## Getting Started

### Prerequisites

The following tools are required for running the examples:

- [VirtualBox](https://www.virtualbox.org/) - for running the VMs spun up be Vagrant
- [Vagrant](https://www.vagrantup.com/) - for managing the VMs
- [Ansible](https://www.ansible.com/) - for provisioning the VMs

### Running the examples

To get started, check out the `ansible/simple` folder.
