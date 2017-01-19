echo "Deploying to the staging area"
oc new-project 12factor-staging
oc policy add-role-to-user system:image-puller system:serviceaccount:12factor-staging:default -n 12factor-dev
oc tag 12factor-dev/my12factorapp:latest 12factor-staging/my12factorapp:latest
oc new-app my12factorapp
oc expose svc/my12factorapp --hostname 12factor-staging.ocp.192.168.122.100.xip.io
oc set probe dc/my12factorapp --readiness --get-url=http://:8080/api/health
oc project 12factor-dev

