job "docker-volume" {
  group "docker-volume" {
    task "docker-volume" {
      driver = "docker"
      config {
        image = "redis:alpine"

        mount {
          type = "volume"
          target = "/data"
          source = "redis-data"
        }
      }
    }
  }
}