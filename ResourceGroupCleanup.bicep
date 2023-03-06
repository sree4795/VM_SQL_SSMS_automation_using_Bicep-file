

@description('Location for all resources.')
param location string = resourceGroup().location



var networkSecurityGroupName_var = 'default-NSG'


resource networkSecurityGroupName 'Microsoft.Network/networkSecurityGroups@2021-02-01' = {
  name: networkSecurityGroupName_var
  location: location
  properties: {
    securityRules: [
      {
        name: 'default-allow-3389'
        properties: {
          priority: 1000
          access: 'Allow'
          direction: 'Inbound'
          destinationPortRange: '3389'
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}
  


