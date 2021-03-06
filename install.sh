#!/bin/bash

if [ "$wyliodrin_board" == "raspberrypi" ]; then
	cp lib/hardfp/*.so /usr/local/lib
fi

if [ "$wyliodrin_board" == "arduinogalileo" ]; then
	mkdir /usr/local
	mkdir /usr/local/lib
	cp lib/x86/*.so /usr/lib
	cp lib/x86/*.so /usr/local/lib
fi

ldconfig

python setup.py install

