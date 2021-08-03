# This tool will take a decimal subnet and convert it to binary

class Subnet {

    [string] $address;
    
    [int] $cidr;

    [string] SubnetMask()
        {
            $binary_zeros = '0' * (32 - $this.cidr)
            $binary_ones = '1' * $this.cidr
            $subnet_mask = $binary_ones + $binary_zeros
            return $subnet_mask
        }  

    [string] BinaryAddress()
        {
            $split_address = $this.address.split('.')
            $binary_number_list = @()
            foreach($split_number in $split_address)
            {
                $binary_number = [System.Convert]::ToString($split_number,2).PadLeft(8,'0')
                $binary_number_list += $binary_number
            }
            return $binary_number_list -join '.'
        } 
}