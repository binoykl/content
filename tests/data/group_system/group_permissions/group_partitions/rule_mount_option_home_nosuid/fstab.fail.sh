#!/bin/bash
# profiles = xccdf_org.ssgproject.content_profile_stig

. ../partition.sh

umount /home || true  # no problem if not mounted

create_partition

make_fstab_given_partition_line /home ext2 nodev

mount_partition /home
