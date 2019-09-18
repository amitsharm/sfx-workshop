SignalFx provides open and flexible instrumentation for monitoring your services. You can use Helm to deploy and manage SignalFx agent on your Kubernetes cluster. Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

* Install SignalFx Helm Chart 
`helm repo add signalfx https://dl.signalfx.com/helm-repo`{{copy}}
SignalFx agent uses an access token to authenticate with the SignalFx API. 

* Ensure the latest copy of the repository:
`helm repo update`{{copy}}

* Copy your Access Token from the provided SignalFx account details card  and export it as an environment variable: <br/>
`export MY_ACCESS_TOKEN=<your-access-token>`{{copy}}

* Install SignalFx agent as a DaemonSet using Helm chart: <br/>
`helm install --set signalFxAccessToken=0BDn_y4BabezAzOstVEdIQ --set clusterName=K8sCluster --set signalFxRealm=us1 signalfx/signalfx-agent`{{copy}}

* Ensure your Kubernetes objects are created as expected. First the secret. You should have 32 bytes of secret data in the key `token` in an `Opaque` secret.

<details>
<summary>Hint</summary>
`kubectl get secrets`{{copy}} prints a list of all secrets in the current namespace. <br/> <br/>

`kubectl describe secret signalfx-agent`{{copy}} prints details of a specific secret. <br/> <br/>

`kubectl get secret -oyaml signalfx-agent`{{copy}} prints the full YAML representation of a secret.
</details>

