#!/bin/bash

for name in $(cat list.txt);do
#this refers to list.txt in this repo.  it contains names of some common dns names
        host $name.megacorpone.com|grep "has address" |cut -d" " -f1,4
        #change megacorpone.com to relevant domain
done

