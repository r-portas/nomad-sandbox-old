locals {
  config = abspath("./config")
}

job "home-assistant" {
  group "home-assistant" {
    network {
      port "ui" {
        static = 8123
        to = 8123
      }
    } 

    task "home-assistant" {
      driver = "docker"
      config {
        image = "ghcr.io/home-assistant/home-assistant:stable"
        ports = ["ui"]
        
        volumes = [
          "${local.config}:/config",
        ]
      }
      
      resources {
        cpu = 500
        memory = 1024
      }
    }
  }
}