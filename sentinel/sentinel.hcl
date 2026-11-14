
policy "sovereignty" {
  source            = "./sovereignty.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "supply-chain" {
  source            = "./supply-chain.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "ec2-security" {
  source            = "./ec2-security.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "storage-security" {
  source            = "./storage-security.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "network-security" {
  source            = "./network-security.sentinel"
  enforcement_level = "hard-mandatory"
}
