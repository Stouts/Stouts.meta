.PHONY: ansible
ansible:
	@chmod 400 $(CURDIR)/ansible
	@ansible-playbook ansible.yml -i ansible.ini -l vagrant
