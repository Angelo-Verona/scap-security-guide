#!/bin/bash
#
# profiles = xccdf_org.ssgproject.content_profile_ospp-rhel7

if grep -q "^INACTIVE" /etc/default/useradd; then
	sed -i "s/^INACTIVE.*/INACTIVE=90/" /etc/default/useradd
else
	echo "INACTIVE=90" >> /etc/default/useradd
fi
