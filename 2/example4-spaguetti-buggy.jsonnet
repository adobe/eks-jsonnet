local upstream = (import 'simple-cluster.libsonnet');

upstream {
  metadata+: {
    name: 'four',
    region: 'us-east-1',
  },
  # BUG: By overriding nodeGroups we delete everything in it
  nodeGroups: [
    upstream.nodeGroups[0] {
      desiredCapacity: 2
    },
  ],
}
