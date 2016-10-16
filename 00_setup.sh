oc login https://ocp-master.example.com:8443 --insecure-skip-tls-verify=true -u dev -p redhat 
oc new-project 12factor-dev
oc new-build --binary --name=my12factorapp
