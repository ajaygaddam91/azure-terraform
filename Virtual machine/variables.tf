variable "vm"{
    type=object({
      name = string,
      size=string,
      publisher=string,
      offer=string
      sku=string,
      version=string,
      caching=string,
      create_option=string,
      managed_disk_type=string,
      admin_username=string
      admin_password=string
      vm_tags=map(string)
      computer_name=string
    })
}

variable "vm_env_tags"{
    type=string
    default="Test-vm-env"
}