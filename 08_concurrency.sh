oc scale dc/my12factorapp --replicas=3
echo "App Scaled to three instances"
while true; do curl -m 1 http://12factorappdemo.ocp.192.168.122.100.xip.io/api/hello/Master ; echo; sleep 1; done
