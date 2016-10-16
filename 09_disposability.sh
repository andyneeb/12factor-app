echo "Destroying two processes"
oc delete pod `oc get pods -l app=my12factorapp --no-headers=true| grep my12factorapp -m 2| awk '{ print $1 }'`
while true; do curl http://12factorappdemo.ocp.192.168.122.101.xip.io/api/hello/Master ; echo; sleep 1; done
