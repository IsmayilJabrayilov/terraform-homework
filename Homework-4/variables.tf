variable region {
    description = "Choose region for your aws host"
    default = ""
    type = string
}

variable key_name{
    description = "key name"
    default = ""
    type = string
}

variable port {
  type = list(number)
  description = "Provide port"
}

variable ec2_web {
  type = map(string)
  default = {
      ami_id_1 = ""
      instance_type_1 = ""
      ami_id_2 = ""
      instance_type_2 = ""
  }
}

variable "vpc" {
        description = "cidr block for VPC, enable dns support, enable dns hostnames"
    type = list(object({
        cidr = string
        dns_support = bool
        dns_hostnames = bool        
    }))
    default = [{

        cidr = ""
        dns_support = false
        dns_hostnames = false

    }]
    
  
}

variable subnet {
    description = "list of object variables for cidr block, availability zone, auto-assign public IP and name - use it for 4 subnets(2 private, 2 public)"
  type = list(object({
    cidr = string
    az = string
    name = string
    get_public_ip = bool
  }))
  default = [
    {
    cidr = ""
    az = ""
    name = ""
    get_public_ip = false
  },
      {
    cidr = ""
    az = ""
    name = ""
    get_public_ip = false
  },
      {
    cidr = ""
    az = ""
    name = ""
    get_public_ip = false
  },
   {
    cidr = ""
    az = ""
    name = ""
    get_public_ip = false
  }
  ]
}

variable "igw" {
    description = "string variable for Internet Gateway"
  type = string
  default = ""
}

variable "route_table" {
  description = "List of route table names"
  type        = list(string)
  default     = []
}