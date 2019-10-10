# EKS jsonnet Demo

We download one of the examples from:

https://github.com/weaveworks/eksctl/tree/master/examples

And convert it to a jsonnet library!

## Steps

1. Download into simple-cluster.yaml
2. Convert into simple-cluster.json
3. Copy simple-cluster.json to simple-cluster-raw.jsonnet
4. Run `jsonnetfmt simple-cluster-raw.jsonnet > simple-cluster.jsonnet`
5. Run `jsonnet simple-cluster.jsonnet|eksctl create cluster -f -`
6. Start customizing the library!


## Contributing

Contributions are welcomed! Read the [Contributing Guide](./.github/CONTRIBUTING.md) for more information.

## Licensing

This project is licensed under the Apache V2 License. See [LICENSE](LICENSE) for more information.