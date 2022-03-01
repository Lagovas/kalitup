dump_hosts:
	@> ./hosts
	@$(foreach host,$(HOST),echo ${host} >> ./hosts;)

prepare: dump_hosts
	@ansible-playbook -v -K ansible/kalinux_setup.yml

install: prepare
	@for host in `cat ./hosts`; do \
  		ssh -t root@$${host} sh -c 'cd /tmp/katoolin3 && /usr/local/bin/katoolin3'; \
	done;
	@rm ./hosts

clear:
	@rm ./hosts