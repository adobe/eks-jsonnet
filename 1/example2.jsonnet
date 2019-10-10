(import 'simple-cluster.libsonnet') + {
  metadata+: {
    name: 'two',
    region: 'us-east-2',
  },
  nodeGroups+: [
    {
      name: 'ng-2',
      instanceType: 'c5.xlarge',
      desiredCapacity: 10,
    },
  ],
}
