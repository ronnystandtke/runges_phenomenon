Initial setup:
==============

1) Convert Jupyter notebook into temporary python script:
jupyter nbconvert --to script ../Runges\ phenomenon.ipynb --output temp

2) Extract messages from temporary pythn script (and delete it afterwards):
xgettext temp.py
rm temp.py

3) Edit comment at the top of the po file, e.g. with vi:
vi messages.po

4) Create language specific copies, e.g. for German:
cp messages.po de.po

5) Edit language specific .po file (add header information and translations), e.g. with vi for German:
vi de.po

6) Create directory to hold the .mo files, e.g. for German:
mkdir -p de/LC_MESSAGES

7) Create .mo file for certain language, e.g. for German:
msgfmt -o de/LC_MESSAGES/rungesphenomenon.mo de.po


Update:
=======

1) Convert Jupyter notebook into temporary python script:
jupyter nbconvert --to script ../Runges\ phenomenon.ipynb --output temp

2) Extract messages from temporary pythn script (and delete it afterwards):
xgettext temp.py
rm temp.py

3) Update language specific po file, e.g. for German:
msgmerge -U de.po messages.po
vi de.po

4) Update .mo file for certain language, e.g. for German:
msgfmt -o de/LC_MESSAGES/rungesphenomenon.mo de.po
