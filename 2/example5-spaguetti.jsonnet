local upstream = (import 'simple-cluster.libsonnet');

upstream {
  metadata+: {
    name: 'five',
    region: 'us-east-2',
  },
  nodeGroups: [
    ng + if ng.name != 'ng-1' then {}
    else {
      desiredCapacity: 3,
    }
    for ng in upstream.nodeGroups
  ],
}
