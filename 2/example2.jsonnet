(import 'simple-cluster.libsonnet') {
  metadata+: {
    name: 'two',
    region: 'us-east-1',
  },
  nodeGroups+: [
    {
      name: 'ng-3',
      instanceType: 'c5.xlarge',
      desiredCapacity: 10,
    },
  ],
}
