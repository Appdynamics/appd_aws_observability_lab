#!/bin/bash

i=0
while [ $i -ne 10 ]
do
    i=$(($i+1))
    echo "running query number $i"
    curl -X GET "http://a07fec7cccd2d4f77a64bc1241a5251d-1143527592.us-east-1.elb.amazonaws.com:8080/ps-loanacctdetails?accountNumber=577662276-1&psAction=3&psStartStop=start&psOptionsArray=0,1,1" -H "Content-Type: application/json"
    echo ""
    echo ""
    echo "sleeping for 5 seconds ..."
    sleep 5s
        
done