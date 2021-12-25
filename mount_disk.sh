#!/bin/bash

sudo mkfs.ext4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb

sudo mkdir -p mnt

sudo mount -o discard,defaults /dev/sdb mnt

sudo chmod a+w mnt
