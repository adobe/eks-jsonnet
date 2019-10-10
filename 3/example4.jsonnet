(import 'simple-cluster.libsonnet') {
  _config+:: {
    name: 'four',
    region: 'us-east-1',
    nodeGroups+:: {
      ng1: {
        desiredCapacity: 5,
      },
    },
  },
}
