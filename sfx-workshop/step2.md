SignalFx provides open and flexible instrumentation for monitoring your services. SignalFx agent uses an access token to authenticate with the SignalFx API. 

* Copy your Access Token from the provided SignalFx account details card  and export it as an environment variable: <br/>
`export MY_ACCESS_TOKEN=<your-access-token>`{{copy}}

* Create a `Secret` with your access token: <br/>
`kubectl create secret generic --from-literal access-token=MY_ACCESS_TOKEN signalfx-agent`{{copy}}

* Ensure your secret is configured as expected. You should have 32 bytes of secret data in the key `token` in an `Opaque` secret.

<details>
<summary>Hint</summary>
`kubectl get secrets`{{copy}} prints a list of all secrets in the current namespace. <br/> <br/>

`kubectl describe secret signalfx-agent`{{copy}} prints details of a specific secret. <br/> <br/>

`kubectl get secret -oyaml signalfx-agent`{{copy}} prints the full YAML representation of a secret.
</details>

