#!/bin/bash
openssl aes-256-cbc -pbkdf2 -e -in .github/.ssh/id_rsa -out .github/.ssh/id_rsa.cipher -k "${KEY}"
