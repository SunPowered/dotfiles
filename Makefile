update:
	git submodule foreach git checkout master
	git submodule foreach git pull origin
	git commit -a -m "Auto updated submodules"

iit:
	git submodule update --init

install:
	scripts/bootstrap.sh
