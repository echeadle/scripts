#!/bin/bash

ssh-keygen -t rsa -b 4096 -C "echeadle@echeadle.info"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
