# Kubernetes on LXC
## Steps:

**0.-** Create k8s infrastructure. You just need have setup LXC to use LVM with enough free space ant then create the infrastructure with:
```
$> ansible-playbook k8s-lxc.yml
```
The result should be:

![k8s cluster](https://github.com/maximba/k8s_lxc/blob/master/images/shot4.png)

**1.-** Create bastion lxc using bastion.yml:
```
$> ansible-playbook bastion.yml
```
**2.-** Add proxy setup in ~/.ssh/config
```
...
 Host bastion
	User ubuntu
	HostName 10.38.14.110
	ForwardX11 yes
	ProxyCommand ssh karis nc %h %p
...

```
**3.-** ssh to bastion and launch:
```
$> kubectl proxy &
$> firefox &
```

**4.-** Open location at firefox:
[http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/](http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/)

![Auth Page](https://github.com/maximba/k8s_lxc/blob/master/images/shot1.png)

For authentication use kubeconfig file at ubuntu home directory
![kubeconfig](https://github.com/maximba/k8s_lxc/blob/master/images/shot2.png)

**5.-** Dashboard should look as:
![Dashboard](https://github.com/maximba/k8s_lxc/blob/master/images/shot3.png)


&nbsp;

