ssh ubuntu@192.168.0.182
export IP=192.168.0.182
k3sup install --ip $IP --user ubuntu --context k3s-ubuntu-vm

export KUBECONFIG=~/code/devopsdirective/devops-directive-kubernetes-course/kubeconfig
kubectl config use-context k3s-ubuntu-vm
kubectl get node -o wide

k3sup ready \
  --context k3s-ubuntu-vm \
  --kubeconfig ./kubeconfig
k3sup ready --kubeconfig ./kubeconfig
