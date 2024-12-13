kubectl create secret generic db-user-pass \
    --from-literal=username=admin \
    --from-literal=password='S!B\*d$zDsb='


kubectl exec app-env -- printenv
