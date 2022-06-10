project = "example-nodejs-nomad"

app "example-nodejs-nomad" {
  runner {
    profile = "nomad"
  }

  build {
    use "pack" {}
    registry {
      use "docker" {
        image = "nodejs-example-nomad"
        tag   = "1"
        local = true
      }
    }
  }

  deploy {
    use "nomad" {
      // these options both default to the values shown, but are left here to
      // show they are configurable
      datacenter = "dc1"
      namespace  = "default"
    }
  }

}
