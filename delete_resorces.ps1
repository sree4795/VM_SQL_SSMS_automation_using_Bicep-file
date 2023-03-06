        az resource delete --resource-group Demo --name simple-vm --resource-type "Microsoft.Compute/virtualMachines" --verbose
        az resource delete --resource-group Demo --name myVMNic --resource-type "Microsoft.Network/networkInterfaces" --verbose
        az resource delete --resource-group Demo --name bootdiagsahtevq5zf3sho --resource-type "Microsoft.Storage/storageAccounts" --verbose
        az resource delete --resource-group Demo --name myPublicIP --resource-type "Microsoft.Network/publicIPAddresses" --verbose
        az resource delete --resource-group Demo --name MyVNET --resource-type "Microsoft.Network/virtualNetworks" --verbose
        az resource delete --resource-group Demo --name default-NSG --resource-type "Microsoft.Network/networkSecurityGroups" --verbose
