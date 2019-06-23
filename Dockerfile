FROM ubuntu:16.04

RUN mkdir -p /opt/prometheus_script ./data /etc/prometheus/
ADD grafana-6.2.4.linux-amd64.tar.gz prometheus-2.7.2.linux-amd64.tar.gz mysqld_exporter-0.11.0.linux-amd64.tar.gz /opt/prometheus_script/
COPY prometheus.yml /etc/prometheus/prometheus.yml
ENV DATA_SOURCE_NAME 'mysqld_exporter:password@(192.168.0.15:3306)/'
RUN chown -R 1001:1001 /opt/prometheus_script ./data && \
    chmod 777 /opt/prometheus_script ./data

USER 1001
RUN cat /etc/prometheus/prometheus.yml
EXPOSE 9104 9090
CMD ["/opt/prometheus_script/prometheus-2.7.2.linux-amd64/prometheus --config.file /etc/prometheus/prometheus.yml"]
#CMD ["/opt/prometheus_script/mysqld_exporter-0.11.0.linux-amd64/mysqld_exporter"]