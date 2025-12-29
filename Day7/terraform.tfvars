region          = "ap-south-1"
Environment     = "Dev"
ami_id          = "ami-00ca570c1b6d79f36"
instance_count  = 1
allowed_vm_type = ["t2.micro", "t2.small", "t2.medium"]
cidr_block      = ["10.0.0.0/16", "10.0.1.0/24"]