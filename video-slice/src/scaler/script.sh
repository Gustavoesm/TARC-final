# gcloud sdk install
echo "
    -------------------------------------------
    |       GCloud Installation               |
    -------------------------------------------

    
"
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" |  tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
apt-get install -y apt-transport-https ca-certificates gnupg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
apt-get -y update && apt-get install -y google-cloud-sdk

# gcloud configuration
echo "
    -------------------------------------------
    |       GCloud Configuration              |
    -------------------------------------------


"
gcloud auth activate-service-account --key-file=tarc-trabalho-a7559699757c.json
gcloud container clusters get-credentials seminario --zone us-central1-c --project tarc-trabalho

# remote kubectl config
echo "
    -------------------------------------------
    |       Kubectl Installation              |
    -------------------------------------------


"
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
kubectl config current-context
