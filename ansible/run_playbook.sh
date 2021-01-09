#! /bin/bash

ansible-playbook -i hosts --key-file ./aws-object-detection.pem -u ubuntu playbook.yml
