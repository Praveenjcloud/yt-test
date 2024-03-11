resource mg 'Microsoft.Management/managementGroups@2021-04-01-preview' = {
  name: 'MyTenantLevelManagementGroup'
  targetScope: 'tenant'
  properties: {
    displayName: 'My Tenant Level Management Group'
    details: {
      version: '1.0'
    }
  }
}
