
# Personal notes

login into the right aws account:

```
aws configure
```

It adds a new cluster config into the default kubeconfig file.
```
aws eks --region eu-west-1 update-kubeconfig --kubeconfig=kubeconfig --name dafuemu-cluster

make sure kubeconfig contains the configuration:
```
cat kubeconfig
```
Set the $KUBECONFIG env variable
```
export KUBECONFIG=$PWD/kubeconfig
```

kubectl config set-cluster dafuemu-cluster
```
To switch kubernetes contexts:

```
kubectx
```
