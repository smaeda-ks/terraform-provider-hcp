resource "hcp_hvn" "example" {
  hvn_id         = "hvn"
  cloud_provider = "aws"
  region         = "us-west-2"
  cidr_block     = "172.25.16.0/20"
}

resource "hcp_consul_cluster" "example" {
  cluster_id = "consul-cluster"
  hvn_id     = hcp_hvn.example.hvn_id
  tier       = "development"
}

