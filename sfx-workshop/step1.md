'kubectl' is the command line to access your Kubernetes cluster. The environment is configured to connect to your personal Kubernetes cluster.

You may explore the functionality provided by `kubectl` using `kubectl --help`.

Start by verifying that your cluster is running the expected version of Kubernetes,> '1.11.x'

<details>
<summary>Hint</summary>
`kubectl version`{{copy}} prints the client and server versions.
</details>

Make sure that all the nodes in your cluster are in `Ready` state. If your nodes are `NotReady`, wait a few seconds and try again until they become `Ready`.

<details>
<summary>Hint</summary>
`kubectl get nodes`{{copy}} prints a list of the nodes in your cluster.
</details>
