.PHONY: start format

start:
	nomad agent -dev -network-interface=en0 -config=./config/dev-config.hcl

format:
	nomad fmt -recursive jobs