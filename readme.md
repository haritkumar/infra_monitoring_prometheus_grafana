# Infra Monitoring
Infrastructure monitoring on cloud using Prometheus & Grafana UI

## MySQL Exporter
Supported MySQL versions: 5.5 and up.

Create a user with reading access on all databases
```sql
CREATE USER 'mysqld_exporter'@'%' IDENTIFIED BY 'password' WITH MAX_USER_CONNECTIONS 3;
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'mysqld_exporter'@'%';
```

### Prometheus & Grafana Data Volumes

### Run
```sh
docker run -p 9104:9104 -p 9090:9090 -e MYSQL_USER=1 infra_monitor:1
```

- MySQL Metrics (http://localhost:9104/metrics) 
- Prometheus ()