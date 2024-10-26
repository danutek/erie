oc adm policy add-role-to-user admin system:serviceaccount:openshift-gitops:openshift-gitops-argocd-application-controller -n openshift-gitops
argocd repo add https://github.com/danutek/erie.git
