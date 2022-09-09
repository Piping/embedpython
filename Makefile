all:
	gcc $(shell pkg-config --cflags python3) $(shell python3-config --libs --embed) callpy.c -o callpy
	cp ipy.py ~/.local/lib/python3.10/site-packages/
	./callpy ipy main

init:
	sudo apt install python3 python3-dev python3-pip
	# sudo pacman -Syu python3 python-pip
	pip3 install --user ipython 

clean:
	rm -f callpy
