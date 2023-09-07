oc apply -f openshift-gitops-sub.yaml
until oc wait --for=condition=Ready pod --all -n openshift-gitops &> /dev/null
do
    sleep 5
done
oc apply -f argo-config.yaml
