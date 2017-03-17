#!/bin/bash

if [ -e /certs/ansible.pub ]; then
	echo certificate found, importing to authorized keys 
	mkdir /root/.ssh
	touch /root/.ssh/authorized_keys
	cat /certs/ansible.pub > /root/.ssh/authorized_keys
	echo done: 
	cat /root/.ssh/authorized_keys 
fi

echo starting sshd
/usr/sbin/sshd -D