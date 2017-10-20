# Makefile for pi-stack-ansible-tower-scripts

.PHONY: dump dumpvars ping reboot halt

dump:
	ansible -i inventory -m setup all

dumpvars:
	ansible -i inventory -m debug -a 'var=hostvars[inventory_hostname]' all
	
ping:
	ansible -i inventory all -m ping -u pi

reboot:
	 ansible-playbook -i inventory -b reboot.yml

halt:
	 ansible-playbook -i inventory -b halt.yml
