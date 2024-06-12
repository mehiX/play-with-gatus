#!/bin/sh

SUCCESS=false
for r in $(seq 1 20); do
    curl -X POST -H "Authorization: Bearer mihai2" "http://gatus:8080/api/v1/endpoints/mihai-group-test_mihai-ep-2/external?success=${SUCCESS}";
    sleep 3;
    if [ $r -gt 4 ]; then
        SUCCESS=true
    fi
done
