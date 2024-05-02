#!/bin/sh

SUCCESS=true
for r in $(seq 1 20); do
    curl -X POST -H "Authorization: Bearer mihai" "http://gatos:8080/api/v1/endpoints/mihai-group-test_mihai-ep-1/external?success=${SUCCESS}";
    sleep 2;
    if [ $r -gt 4 ]; then
        SUCCESS=false
    fi
done
