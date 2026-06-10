FROM python:3.14-alpine

RUN apk add --no-cache hdparm util-linux

ADD src/prometheus_diskspin_exporter/main.py /opt/prometheus_diskspin_exporter.py
RUN chmod +x /opt/prometheus_diskspin_exporter.py

EXPOSE 9284

ENTRYPOINT ["python3", "/opt/prometheus_diskspin_exporter.py", "0.0.0.0", "9284"]