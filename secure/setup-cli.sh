#!/bin/bash

export NOMAD_ADDR=https://localhost:4646
export NOMAD_CACERT=./data/nomad-ca.pem
export NOMAD_CLIENT_CERT=./data/cli.pem
export NOMAD_CLIENT_KEY=./data/cli-key.pem