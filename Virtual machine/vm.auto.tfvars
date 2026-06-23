vm={
    
      name = "test-vm",
      size="Standard_B2ats_v2",
      publisher="MicrosoftWindowsServer",
      offer="WindowsServer",
      sku="2022-datacenter-azure-edition",
      version="latest",
      caching="ReadWrite",
      create_option="FromImage",
      managed_disk_type="Standard_LRS",
      admin_username="testadmin"
      admin_password="testadmin123"
      vm_tags={
        Name="Testing_VM"
        Team="DataBricks"
        Author="User123"
      }
      computer_name="hostname"

}

vm_env_tags= "testing-vm-env"