# Infra Monitoring

## MySQL Exporter
Create a user with reading access on all databases
```sql
CREATE USER 'mysqld_exporter'@'%' IDENTIFIED BY 'password' WITH MAX_USER_CONNECTIONS 3;
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'mysqld_exporter'@'%';
```