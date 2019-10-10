// Copyright 2019 Adobe. All rights reserved.
// This file is licensed to you under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License. You may obtain a copy
// of the License at http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software distributed under
// the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
// OF ANY KIND, either express or implied. See the License for the specific language
// governing permissions and limitations under the License.
# A simple example of ClusterConfig object:
{
  apiVersion: 'eksctl.io/v1alpha5',
  kind: 'ClusterConfig',
  metadata: {
    name: 'cluster-1',
    region: 'eu-north-1',
  },
  nodeGroups: [
    {
      name: 'ng-1',
      instanceType: 'm5.large',
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
