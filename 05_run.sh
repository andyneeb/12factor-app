oc new-app my12factorapp
oc expose svc/my12factorapp --hostname 12factorappdemo.ocp.192.168.122.100.xip.io 
oc set probe dc/my12factorapp --readiness --get-url=http://:8080/api/health
