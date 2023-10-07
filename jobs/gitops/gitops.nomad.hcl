job "gitops" {
  type = "batch" 

  group "gitops" {
    task "gitops" {
      driver = "docker"
      config {
        image = "hashicorp/nomad"

        # entrypoint = ["/bin/sh", "-c", "while true; do sleep 500; done"]
        args = ["job", "run", "/local/repo/jobs/redis.nomad.hcl"]
      }

      env {
        NOMAD_ADDR = "http://${attr.nomad.advertise.address}"
      }

      artifact {
        source      = "git::https://github.com/r-portas/nomad-sandbox"
        destination = "local/repo"
      }
    }
  }
}