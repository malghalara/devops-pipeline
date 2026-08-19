job "hello" {
  datacenters = ["dc1"]
  type        = "batch"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image      = "local/hello-devops:latest"
        force_pull = false
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}