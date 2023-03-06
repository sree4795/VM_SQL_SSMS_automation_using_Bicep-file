@description('Location for all resources.')
param location string = resourceGroup().location

@description('Name of the virtual machine.')
param vmName string = 'simple-vm'

resource symbolicname 'Microsoft.Compute/virtualMachines/extensions@2021-04-01' = {
  name: '${vmName}/sqlserver'
  location: location
  properties: {
    publisher: 'Microsoft.Compute'
    type: 'CustomScriptExtension'
    typeHandlerVersion: '1.8'
    autoUpgradeMinorVersion: true
    settings: {
      fileUris: [
        'https://raw.githubusercontent.com/sree4795/ps_files_for_ssms_sql_install/main/ssms_install.ps1'
      ]
      commandToExecute: 'powershell.exe -ExecutionPolicy Unrestricted -File ssms_install.ps1'
    }
  }
}
