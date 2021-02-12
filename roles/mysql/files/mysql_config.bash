# create random password
DBNAME="wordpress_db"
DBUSER="wordpress_user"
PASSWDDB="Temporal01"

PASSROOT="Temporal01"
usermod -p ${PASSROOT} root



# If /root/.my.cnf exists then it won't ask for root password

mysql -h localhost -u root -p${PASSROOT} -e "CREATE DATABASE ${DBNAME};"
mysql -h localhost -u root -p${PASSROOT} -e "CREATE USER ${DBUSER}@localhost IDENTIFIED BY '${PASSWDDB}';"
mysql -h localhost -u root -p${PASSROOT} -e "GRANT ALL PRIVILEGES ON ${DBNAME}.* TO '${DBUSER}'@'localhost';"
mysql -h localhost -u root -p${PASSROOT} -e "FLUSH PRIVILEGES;"

