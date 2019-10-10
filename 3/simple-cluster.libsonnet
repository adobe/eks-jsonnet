// A simple example of ClusterConfig object:
// Very much inspired https://github.com/coreos/kube-prometheus
{
  _config:: {
    name: error 'must override _config.metadata.name',
    region: error 'must override _config.metatada.region',
    nodeGroups:: {
      ng1: {
        name: 'ng-1',
        instanceType: 'm5.large',
        desiredCapacity: 1,
      },
      ng2: {
        name: 'ng-2',
        instanceType: 'm5.large',
        desiredCapacity: 1,
      },
    },
  },
  apiVersion: 'eksctl.io/v1alpha5',
  kind: 'ClusterConfig',
  metadata: {
    name: $._config.name,
    region: $._config.region,
  },
  nodeGroups: [
    $._config.nodeGroups[ng] for ng in std.objectFields($._config.nodeGroups)
  ],
  cloudWatch: {
    clusterLogging: {
      // enable specific types of cluster control plane logs
      enableTypes: [
        'audit',
        'authenticator',
        'controllerManager',
      ],
      // all supported types: "api", "audit", "authenticator", "controllerManager", "scheduler"
      // supported special values: "*" and "all"
    },
  },
}
