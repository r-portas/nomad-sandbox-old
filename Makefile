.PHONY: start

start:
	nomad agent -dev \
		-bind=0.0.0.0 \
		-network-interface=en0 \
		-config="./config/dev-config.hcl"

format:
	nomad fmt -recursive jobs