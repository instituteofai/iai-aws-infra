#! /bin/bash

ansible-playbook -i hosts --key-file ./rsm_key.pem -u ubuntu playbook.yml
