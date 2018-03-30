# Create Aviatrix gateway in AWS public cloud 
#

# upgrade controller
resource "aviatrix_upgrade" "upgrade315" {
    version   = "${var.aviatrix_custom_version}"
}

# To Enable HA Gateway add line  "ha_subnet" keyword 
# To Disable HA Gateway delete "ha_subnet" keyword 
resource "aviatrix_gateway" "aws_gateway" {
     cloud_type = "${var.aviatrix_cloud_type_aws}"
   account_name = "${var.aviatrix_cloud_account_name}"
        gw_name = "${var.aviatrix_gateway_name}"
         vpc_id = "${var.aws_vpc_id}"
        vpc_reg = "${var.aws_region}"
       vpc_size = "${var.aws_instance}"
        vpc_net = "${var.aws_vpc_public_cidr}"
      ha_subnet = "${var.aviatrix_gateway_ha_subnet}"
}

