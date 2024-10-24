#!/usr/bin/env bash

CMD=ansible-playbook
INVENTORY=./inventory/gitlab.ini
PLAYBOOK=./playbooks/setup.yml

SUDO_FLAGS="--become -K"
INV_FLAGS="-i $INVENTORY"
FLAGS="$INV_FLAGS $SUDO_FLAGS"

$CMD $FLAGS $PLAYBOOK
