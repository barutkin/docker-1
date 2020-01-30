#!/bin/bash

while true; do
	sleep 1;
	curl -sS kibana:5601 2>/dev/null && break;
done;
while [[ $(curl -sS kibana:5601/status) == 'Kibana server is not ready yet' ]]; do
	sleep 1;
done;
