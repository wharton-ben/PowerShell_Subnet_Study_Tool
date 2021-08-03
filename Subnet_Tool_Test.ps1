$new_subnet = [subnet]::new()

$new_subnet.address = '192.168.1.1'

$new_subnet.cidr = 24

$new_subnet.BinaryAddress()

$new_subnet.SubnetMask()