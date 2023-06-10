#!/bin/bash

#enter netbox root
cd /opt/netbox/netbox

#activate the virtual environement
source /opt/netbox/venv/bin/activate

#run the server
python3 manage.py runserver 192.168.0.218:8000 --insecure

