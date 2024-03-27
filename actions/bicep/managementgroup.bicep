targetScope = 'managementGroup'

@minLength(1)
@maxLength(17)
@description('targetmgid')
param targetMgId string

@minLength(1)
@description('subscriptionid')
param subscriptionId string

resource subToMG 'Microsoft.Management/managementGroups/subscriptions@2020-05-01' = {
  scope: tenant()
  name: '${targetMgId}/${subscriptionId}'
}
