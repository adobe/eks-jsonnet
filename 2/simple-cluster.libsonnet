# A simple example of ClusterConfig object:
{
  apiVersion: 'eksctl.io/v1alpha5',
  kind: 'ClusterConfig',
  metadata: {
    name: error 'must override metadata.name',
    region: error 'must override metatada.region',
  },
  nodeGroups: [
    {
      name: 'ng-1',
      instanceType: 'm5.large',
      desiredCapacity: 1,
    },
    {
      name: 'ng-2',
      instanceType: 'c5.large',
      desiredCapacity: 1,
    },
  ],
  cloudWatch: {
    clusterLogging: {
      # enable specific types of cluster control plane logs
      enableTypes: [
        'audit',
        'authenticator',
        'controllerManager',
      ],
      # all supported types: "api", "audit", "authenticator", "controllerManager", "scheduler"
      # supported special values: "*" and "all"
    },
  },
}
