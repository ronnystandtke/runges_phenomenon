#!/bin/sh

jupyter nbconvert --to script ../Runges\ phenomenon.ipynb --output temp
xgettext ../temp.py
rm ../temp.py
msgmerge -U de.po messages.po
vi de.po
msgfmt -o de/LC_MESSAGES/rungesphenomenon.mo de.po
