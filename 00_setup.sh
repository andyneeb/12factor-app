oc login https://ocp.example.com:8443 --insecure-skip-tls-verify=true 
oc new-project 12factor-dev
oc new-build --binary --name=my12factorapp
