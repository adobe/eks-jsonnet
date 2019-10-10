(import 'simple-cluster.libsonnet') {
  _config+:: {
    name: 'two',
    region: 'us-east-2',
    nodeGroups+:: {
      ng3: {
        name: 'ng-3',
        instanceType: 'c5.2xlarge',
        desiredCapacity: 5,
      },
    },
  },
}
