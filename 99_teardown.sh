oc login https://ocp.example.com:8443 --insecure-skip-tls-verify=true -u admin -p redhat 
oc delete all --all -n 12factor-dev
oc delete all --all -n 12factor-staging
oc delete project 12factor-dev
oc delete project 12factor-staging
oc login https://ocp.example.com:8443 -u dev
