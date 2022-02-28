# HwameiStor Kubernetes Helm Charts

[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/5685/badge)](https://bestpractices.coreinfrastructure.org/projects/5685) [![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/hwameistor)](https://artifacthub.io/packages/search?repo=hwameistor)


This functionality is in alpha and is subject to change. The code is provided as-is with no warranties. Alpha features are not subject to the support SLA of official GA features.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
$ git clone https://github.com/hwameistor/helm-charts.git
```

```console
$ cd helm-charts/charts
```

```console
$ helm install hwameistor -n hwameistor --create-namespace --generate-name
```

or:

```console
$ helm repo add hwameistor https://github.com/hwameistor/helm-charts
```

```console
$ helm install hwameistor -n hwameistor --create-namespace --generate-name
```

You can then run `helm search repo hwameistor` to see the charts.

Once the Helm charts was installed. You should enable HwameiStor on specific nodes as follows:

```console
$ ./enable-hwameistor-on-node.sh <node01,node02> <HDD,SSD>
```

## Contributing

We'd love to have you contribute!

## License

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
[Apache 2.0 License](https://github.com/hwameistor/helm-charts/blob/helm/LICENSE).
