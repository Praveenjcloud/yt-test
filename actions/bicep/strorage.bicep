param location string = 'East US'

resource mg 'Microsoft.Management/managementGroups@2021-04-01-preview' = {
  name: 'MyTenantLevelManagementGroup'
  location: 'managed'
  properties: {
    displayName: 'My Tenant Level Management Group'
    details: {
      version: '1.0'
    }
  }
}

resource vm 'Microsoft.Compute/virtualMachines@2022-03-01' = {
  name: 'MyVirtualMachine'
  location: location
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_DS1_v2'
    }
    osProfile: {
      computerName: 'MyVM'
      adminUsername: 'adminUsername'
      adminPassword: 'adminPassword'
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer: 'WindowsServer'
        sku: '2019-Datacenter'
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: resourceId('Microsoft.Network/networkInterfaces', 'MyNIC')
        }
      ]
    }
  }
}
