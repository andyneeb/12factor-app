echo "Deploying a database"
oc new-app --name mysql -p DATABASE_SERVICE_NAME=mysql -p MYSQL_USER=myuser -p MYSQL_PASSWORD=mypassword -p MYSQL_DATABASE=mydatabase mysql-persistent 
echo "Attach it to the app"
oc env dc/my12factorapp host=mysql username=myuser password=mypassword database=mydatabase
echo "New Endpoint at ./api/db"
