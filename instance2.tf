resource "azurerm_virtual_machine" "user01machine2" {
	name = "vm02"
	location = "koreasouth"
	resource_group_name = "${azurerm_resource_group.user01finalrg.name}"
	network_interface_ids = ["${azurerm_network_interface.uesr01nic2.id}"]
	vm_size = "Standard_DS1_v2"

	storage_os_disk {
		name = "disk02"
		caching = "ReadWrite"
		create_option = "FromImage"
		managed_disk_type = "Standard_LRS"
	}

	storage_image_reference {
		publisher = "Canonical"
		offer = "UbuntuServer"
		sku = "16.04.0-LTS"
		version = "latest"
	}

	os_profile {
		computer_name = "vm02"
		admin_username = "azureuser"
		admin_password = "SKCNC!23"
	}
	
	os_profile_linux_config {
		disable_password_authentication = false
		ssh_keys {
			path = "/home/azureuser/.ssh/authorized_keys"
			key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6FGTFOyJh6sGR0ok6UxBD2haoRryhibggAqQNmD4LiQMfk9OI7Qn6Ba5BYN3N5tsFkazZr531qlDMai5si6Hh8L8wT4MAxoMDmPP9cRaASFBYRcDcz+vYq9fgV9OvudTdUCw/TfyNEQeeqTV7+V9N/p7OKQOfnq++/lKgZ3FHWOgxqDE+YAujQlL5oz9tmna6U+mmVZfmIw9Dcvm8FpI0sMCN7knfdrDDBZXYQ/zZPJ40NZDKKamFIlHuX6/uqJXQctLazLDWoFhvoTtBHURLFT9QwSnrukGj3V11mB5Di+PMra27KXd+IXvpcRc64KhoKRSK1U+eJ6TLVwfTlt1j user01@cc-47140307-86bdbdcbbd-mq2vz"
		}
	}
}


