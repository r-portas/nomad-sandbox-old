.PHONY: start format

start:
	nomad agent -dev -bind 0.0.0.0 -network-interface=en0

format:
	nomad fmt -recursive jobs