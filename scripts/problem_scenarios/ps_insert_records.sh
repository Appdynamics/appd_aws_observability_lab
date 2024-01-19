#!/bin/bash

echo "inserting 150,000 records in batches 0f 5,000, please wait ..."

echo ""

i=0
while [ $i -ne 30 ]
do
    i=$(($i+1))
    echo "running batch number $i of 30"
    echo "inserting 5,000 records, please wait ..."
    curl -X GET "http://a07fec7cccd2d4f77a64bc1241a5251d-1143527592.us-east-1.elb.amazonaws.com:8080/ps-loanacctdetails?accountNumber=577662276-1&psAction=2&psStartStop=start&psOptionsArray=5000,1,1" -H "Content-Type: application/json"

    echo ""
    echo ""
    echo "sleeping for 5 seconds ..."
    sleep 5
    
done

echo ""
echo "finished inserting all records"
