#!/bin/bash
set -euo pipefail

PKGS='podman bootc osbuild-selinux'

echo '##### This is setup-bootc.sh! #####'

echo
echo

echo '===== Step 1) Installing PKGS =====' 

echo 'Updating dnf Package Manager'
dnf update -y && echo 'Update complete!'

echo "Installing PKGS: ${PKGS}"
dnf install -y ${PKGS} && echo 'Installing complete!'

echo
echo

echo '===== Step 2) Login Registry (quay.io)  =====' 
podman login quay.io && echo 'Login complete!'

echo
echo


