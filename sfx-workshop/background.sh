git clone https://github.com/amitsharm/sfx-workshop
git clone https://github.com/GoogleCloudPlatform/microservices-demo.git
ln -s /root/sfx-workshop/assets/ /root/assets
helm init
cd sfx-workshop
export GOOGLE_APPLICATION_CREDENTIALS=service-account-key.json
export KUBECONFIG=kubeconfig.yaml
