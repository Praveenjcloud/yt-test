targetScope = 'managementGroup'

@minLength(1)
@maxLength(17)
@description('Target Management Group ID')
param targetMgId string

@minLength(1)
@description('Subscription ID')
param subscriptionId string

resource subToMG 'Microsoft.Management/managementGroups/subscriptions@2020-05-01' = {
  scope: tenant()
  name: '${targetMgId}/${subscriptionId}'
}
