#Begin automatic creation of role
DB_USERNAME="postgres"
DB_PASSWORD="root"
DB_HOST="localhost"

export PGUSER=$DB_USERNAME
export PGHOST=$DB_HOST
export PGPASSWORD=$DB_PASSWORD

# Initialize the following variables as appropriate:
DB_USERNAME="sacco"
DB_PASSWORD="sacco123SaCco"
DB_HOST="localhost"



# There should be no need to change anything below this line.
echo "Starting database initialization script..."

export PGUSER=$DB_USERNAME
export PGHOST=$DB_HOST
export PGPASSWORD=$DB_PASSWORD

echo "droping the current database s..."

psql -f ../etc/sql/drop.sql -d postgres

echo "Restoring from /home/"$USER"/sacco/dbBackup/buckup.sql.."

psql  -U sacco -d saccodb -f /home/$USER/sacco/dbBackup/buckup.sql

echo "done.!!!! .."