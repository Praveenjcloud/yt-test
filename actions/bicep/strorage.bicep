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
