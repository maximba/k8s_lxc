kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | grep token |  awk '{print $1}') | grep 'token:' | awk '{print $2}'
