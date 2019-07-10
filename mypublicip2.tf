resource "azurerm_public_ip" "user01publicip2" {
	name = "user01publicip2"
	location = "koreasouth"
	resource_group_name = "${azurerm_resource_group.user01finalrg.name}"
	allocation_method = "Dynamic"
}
