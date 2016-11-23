oc login --insecure-skip-tls-verify=true
oc new-project 12factor-dev
oc new-build --binary --name=my12factorapp
